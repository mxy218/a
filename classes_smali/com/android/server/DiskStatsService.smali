.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# static fields
.field private static final DISKSTATS_DUMP_FILE:Ljava/lang/String; = "/data/system/diskstats_cache.json"

.field private static final TAG:Ljava/lang/String; = "DiskStatsService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private getRecentPerf()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 300
    const-string/jumbo v0, "storaged"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_12

    .line 302
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v0

    return v0

    .line 301
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "storaged not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 200
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 201
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 202
    const/4 p1, 0x1

    return p1

    .line 200
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    :cond_12
    return v1
.end method

.method private reportCachedValues(Ljava/io/PrintWriter;)V
    .registers 6

    .line 211
    :try_start_0
    const-string v0, "/data/system/diskstats_cache.json"

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v0, "App Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string v0, "appSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 215
    const-string v0, "App Data Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string v0, "appDataSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 217
    const-string v0, "App Cache Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, "cacheSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 219
    const-string v0, "Photos Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "photosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 221
    const-string v0, "Videos Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v0, "videosSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 223
    const-string v0, "Audio Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string v0, "audioSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 225
    const-string v0, "Downloads Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string v0, "downloadsSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 227
    const-string v0, "System Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "systemSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 229
    const-string v0, "Other Size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "otherSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 231
    const-string v0, "Package Names: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "packageNames"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 233
    const-string v0, "App Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string v0, "appSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    const-string v0, "App Data Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    const-string v0, "appDataSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 237
    const-string v0, "Cache Sizes: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v0, "cacheSizes"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c6} :catch_c7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c6} :catch_c7

    .line 241
    goto :goto_cf

    .line 239
    :catch_c7
    move-exception p1

    .line 240
    const-string v0, "DiskStatsService"

    const-string v1, "exception reading diskstats cache file"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_cf
    return-void
.end method

.method private reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 18

    .line 246
    move-object/from16 v0, p1

    const-string v1, "DiskStatsService"

    :try_start_4
    const-string v2, "/data/system/diskstats_cache.json"

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 248
    const-wide v4, 0x10b00000006L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 250
    const-wide v6, 0x10300000001L

    const-string v2, "appSize"

    .line 251
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 250
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 252
    const-wide v6, 0x1030000000aL

    const-string v2, "appDataSize"

    .line 253
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 252
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 254
    const-string v2, "cacheSize"

    .line 255
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 254
    const-wide v8, 0x10300000002L

    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 256
    const-string/jumbo v2, "photosSize"

    .line 257
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 256
    const-wide v10, 0x10300000003L

    invoke-virtual {v0, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 258
    const-string/jumbo v2, "videosSize"

    .line 259
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 258
    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 260
    const-wide v6, 0x10300000005L

    const-string v2, "audioSize"

    .line 261
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 260
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 262
    const-wide v6, 0x10300000006L

    const-string v2, "downloadsSize"

    .line 263
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 262
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 264
    const-wide v6, 0x10300000007L

    const-string/jumbo v2, "systemSize"

    .line 265
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 264
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 266
    const-wide v6, 0x10300000008L

    const-string/jumbo v2, "otherSize"

    .line 267
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 266
    invoke-virtual {v0, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 269
    const-string/jumbo v2, "packageNames"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 270
    const-string v6, "appSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 271
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 272
    const-string v14, "cacheSizes"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 273
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 274
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    .line 275
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    .line 276
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_116

    .line 277
    const/4 v15, 0x0

    :goto_ca
    if-ge v15, v14, :cond_11b

    .line 278
    const-wide v10, 0x20b00000009L

    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 280
    const-wide v12, 0x10900000001L

    .line 281
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 282
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 283
    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 284
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000003L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 286
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 277
    add-int/lit8 v15, v15, 0x1

    move-wide v10, v12

    const-wide v8, 0x10300000002L

    const-wide v12, 0x10300000004L

    goto :goto_ca

    .line 289
    :cond_116
    const-string v2, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_11b
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11e} :catch_11f
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_11e} :catch_11f

    .line 296
    goto :goto_125

    .line 294
    :catch_11f
    move-exception v0

    .line 295
    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :goto_125
    return-void
.end method

.method private reportDiskWriteSpeed(Ljava/io/PrintWriter;)V
    .registers 7

    .line 309
    const-string v0, "DiskStatsService"

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result v1

    int-to-long v1, v1

    .line 310
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_16

    .line 311
    const-string v3, "Recent Disk Write Speed (kB/s) = "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_20

    .line 314
    :cond_16
    const-string v1, "Recent Disk Write Speed data unavailable"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    const-string v1, "Recent Disk Write Speed data unavailable!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_20} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_20} :catch_21

    .line 320
    :goto_20
    goto :goto_30

    .line 317
    :catch_21
    move-exception v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :goto_30
    return-void
.end method

.method private reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 325
    const-string v0, "DiskStatsService"

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result v1

    int-to-long v1, v1

    .line 326
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_16

    .line 327
    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1b

    .line 329
    :cond_16
    const-string p1, "Recent Disk Write Speed data unavailable!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 333
    :goto_1b
    goto :goto_24

    .line 331
    :catch_1c
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_24
    return-void
.end method

.method private reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .registers 22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 162
    :try_start_6
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    .line 164
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    .line 165
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v8, v0

    .line 166
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_82

    cmp-long v0, v8, v10

    if-lez v0, :cond_82

    .line 171
    const-wide/16 v10, 0x400

    if-eqz v3, :cond_57

    .line 172
    const-wide v12, 0x20b00000004L

    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 173
    const-wide v14, 0x10e00000001L

    move/from16 v0, p5

    invoke-virtual {v3, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 174
    const-wide v14, 0x10300000002L

    mul-long/2addr v6, v4

    div-long/2addr v6, v10

    invoke-virtual {v3, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 175
    const-wide v6, 0x10300000003L

    mul-long/2addr v8, v4

    div-long/2addr v8, v10

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 176
    invoke-virtual {v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 177
    goto :goto_80

    .line 178
    :cond_57
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    const-string v0, "-Free: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    mul-long v12, v6, v4

    div-long/2addr v12, v10

    invoke-virtual {v2, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 181
    const-string v0, "K / "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    mul-long/2addr v4, v8

    div-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 183
    const-string v0, "K total = "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 184
    const-wide/16 v4, 0x64

    mul-long/2addr v6, v4

    div-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 185
    const-string v0, "% free"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    :goto_80
    nop

    .line 197
    return-void

    .line 167
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid stat: bsize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " avail="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " total="

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a9} :catch_a9

    .line 187
    :catch_a9
    move-exception v0

    .line 188
    if-eqz v3, :cond_ad

    goto :goto_bc

    .line 191
    :cond_ad
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    const-string v1, "-Error: "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    :goto_bc
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19

    .line 70
    move-object v7, p0

    move-object/from16 v1, p2

    iget-object v0, v7, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v2, "DiskStatsService"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 73
    :cond_e
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 74
    const/4 v8, 0x0

    move v2, v8

    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    int-to-byte v3, v2

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 76
    :cond_1d
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/perftest.tmp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    nop

    .line 78
    nop

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 82
    const/4 v5, 0x0

    :try_start_30
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_53
    .catchall {:try_start_30 .. :try_end_35} :catchall_49

    .line 83
    :try_start_35
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_44
    .catchall {:try_start_35 .. :try_end_38} :catchall_40

    .line 87
    :try_start_38
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_3e

    :catch_3c
    move-exception v0

    .line 88
    nop

    .line 90
    :goto_3e
    move-object v6, v5

    goto :goto_5e

    .line 87
    :catchall_40
    move-exception v0

    move-object v1, v0

    move-object v5, v6

    goto :goto_4b

    .line 84
    :catch_44
    move-exception v0

    move-object v14, v6

    move-object v6, v0

    move-object v0, v14

    goto :goto_56

    .line 87
    :catchall_49
    move-exception v0

    move-object v1, v0

    :goto_4b
    if-eqz v5, :cond_52

    :try_start_4d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    :cond_52
    :goto_52
    throw v1

    .line 84
    :catch_53
    move-exception v0

    move-object v6, v0

    move-object v0, v5

    .line 85
    :goto_56
    nop

    .line 87
    if-eqz v0, :cond_5e

    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    .line 90
    :cond_5e
    :goto_5e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 93
    :cond_6b
    const-string v0, "--proto"

    move-object/from16 v2, p3

    invoke-direct {p0, v2, v0}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 94
    nop

    .line 96
    const/4 v11, 0x1

    if-eqz v0, :cond_a7

    .line 97
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 98
    nop

    .line 99
    const-wide v12, 0x10800000001L

    if-eqz v6, :cond_88

    move v2, v11

    goto :goto_89

    :cond_88
    move v2, v8

    :goto_89
    invoke-virtual {v1, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 100
    if-eqz v6, :cond_9b

    .line 101
    const-wide v2, 0x10900000002L

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_a4

    .line 103
    :cond_9b
    const-wide v12, 0x10500000003L

    sub-long/2addr v9, v3

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 116
    :goto_a4
    move-object v10, v1

    move-object v9, v5

    goto :goto_c7

    .line 106
    :cond_a7
    if-eqz v6, :cond_b6

    .line 107
    const-string v2, "Test-Error: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c5

    .line 110
    :cond_b6
    const-string v2, "Latency: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    sub-long/2addr v9, v3

    invoke-virtual {v1, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 112
    const-string/jumbo v2, "ms [512B Data Write]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    :goto_c5
    move-object v9, v1

    move-object v10, v5

    :goto_c7
    if-eqz v0, :cond_cd

    .line 117
    invoke-direct {p0, v10}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_d0

    .line 119
    :cond_cd
    invoke-direct {p0, v9}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeed(Ljava/io/PrintWriter;)V

    .line 122
    :goto_d0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x0

    const-string v3, "Data"

    move-object v1, p0

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 124
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v6, 0x1

    const-string v3, "Cache"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 126
    new-instance v2, Ljava/io/File;

    const-string v1, "/system"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    const-string v3, "System"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 129
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v1

    .line 130
    if-eqz v1, :cond_fc

    goto :goto_100

    :cond_fc
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v8

    .line 131
    :goto_100
    if-eqz v0, :cond_119

    .line 132
    const-wide v2, 0x10e00000005L

    if-eqz v1, :cond_10e

    .line 133
    const/4 v1, 0x3

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_120

    .line 135
    :cond_10e
    if-eqz v8, :cond_115

    .line 136
    const/4 v1, 0x2

    invoke-virtual {v10, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_120

    .line 139
    :cond_115
    invoke-virtual {v10, v2, v3, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_120

    .line 142
    :cond_119
    if-eqz v1, :cond_120

    .line 143
    const-string v1, "File-based Encryption: true"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    :cond_120
    :goto_120
    if-eqz v0, :cond_126

    .line 147
    invoke-direct {p0, v10}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_129

    .line 149
    :cond_126
    invoke-direct {p0, v9}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    .line 152
    :goto_129
    if-eqz v0, :cond_12e

    .line 153
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 157
    :cond_12e
    return-void
.end method
