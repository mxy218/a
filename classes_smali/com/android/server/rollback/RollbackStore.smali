.class Lcom/android/server/rollback/RollbackStore;
.super Ljava/lang/Object;
.source "RollbackStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mRollbackDataDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    .line 73
    return-void
.end method

.method static backupPackageCodePath(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 221
    new-instance p0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/nio/file/CopyOption;

    invoke-static {p1, p0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 225
    return-void
.end method

.method private static ceSnapshotInodesFromJson(Lorg/json/JSONArray;)Landroid/util/SparseLongArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 166
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    .line 167
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 168
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 169
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "ceSnapshotInode"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 171
    :cond_27
    return-object v0
.end method

.method private static ceSnapshotInodesToJson(Landroid/util/SparseLongArray;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 156
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    const-string v5, "ceSnapshotInode"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 161
    :cond_2a
    return-object v0
.end method

.method private static convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 100
    new-instance p0, Landroid/util/IntArray;

    invoke-direct {p0}, Landroid/util/IntArray;-><init>()V

    return-object p0

    .line 103
    :cond_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 104
    const/4 v1, 0x0

    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 108
    :cond_1f
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method private static convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;
    .registers 4

    .line 115
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 116
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 117
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 120
    :cond_16
    return-object v0
.end method

.method private static convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 128
    iget v3, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    iget v3, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    const-string v4, "appId"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    iget-object v1, v1, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v3, "seInfo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 132
    goto :goto_9

    .line 134
    :cond_35
    return-object v0
.end method

.method private static convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 142
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 143
    new-instance v3, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    .line 144
    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 145
    const-string v5, "appId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    const-string/jumbo v6, "seInfo"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    .line 143
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 149
    :cond_2f
    return-object v0
.end method

.method static deletePackageCodePaths(Lcom/android/server/rollback/RollbackData;)V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 246
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 248
    goto :goto_a

    .line 249
    :cond_25
    return-void
.end method

.method static getPackageCodePaths(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 234
    if-eqz p0, :cond_12

    array-length p1, p0

    if-nez p1, :cond_11

    goto :goto_12

    .line 237
    :cond_11
    return-object p0

    .line 235
    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadRollbackData(Ljava/io/File;)Lcom/android/server/rollback/RollbackData;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "rollback.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    new-instance v1, Lorg/json/JSONObject;

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    new-instance v0, Lcom/android/server/rollback/RollbackData;

    const-string v2, "info"

    .line 290
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;

    move-result-object v3

    const-string/jumbo v2, "timestamp"

    .line 292
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v5

    const-string/jumbo v2, "stagedSessionId"

    .line 293
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "state"

    .line 294
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackData;->rollbackStateFromString(Ljava/lang/String;)I

    move-result v7

    const-string v2, "apkSessionId"

    .line 295
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "restoreUserDataInProgress"

    .line 296
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/rollback/RollbackData;-><init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZ)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_50} :catch_51
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_50} :catch_51
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_50} :catch_51

    .line 289
    return-object v0

    .line 297
    :catch_51
    move-exception p0

    .line 298
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 336
    nop

    .line 337
    const-string/jumbo v0, "versionRolledBackFrom"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 336
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    .line 338
    nop

    .line 339
    const-string/jumbo v0, "versionRolledBackTo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 341
    nop

    .line 342
    const-string/jumbo v0, "pendingBackups"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;

    move-result-object v4

    .line 343
    nop

    .line 344
    const-string/jumbo v0, "pendingRestores"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->convertToRestoreInfoArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 346
    const-string v0, "isApex"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 348
    const-string v0, "installedUsers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->convertToIntArray(Lorg/json/JSONArray;)Landroid/util/IntArray;

    move-result-object v7

    .line 349
    nop

    .line 350
    const-string v0, "ceSnapshotInodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 349
    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->ceSnapshotInodesFromJson(Lorg/json/JSONArray;)Landroid/util/SparseLongArray;

    move-result-object v8

    .line 352
    new-instance p0, Landroid/content/rollback/PackageRollbackInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZLandroid/util/IntArray;Landroid/util/SparseLongArray;)V

    return-object p0
.end method

.method private static packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 386
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 388
    :cond_1a
    return-object v0
.end method

.method private static removeFile(Ljava/io/File;)V
    .registers 5

    .line 397
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 398
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 399
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 402
    :cond_16
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 403
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 405
    :cond_1f
    return-void
.end method

.method private static rollbackInfoFromJson(Lorg/json/JSONObject;)Landroid/content/rollback/RollbackInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 185
    new-instance v6, Landroid/content/rollback/RollbackInfo;

    .line 186
    const-string/jumbo v0, "rollbackId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 187
    const-string/jumbo v0, "packages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->packageRollbackInfosFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 188
    const-string v0, "isStaged"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 189
    const-string v0, "causePackages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 190
    const-string v0, "committedSessionId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    .line 185
    return-object v6
.end method

.method private static rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 176
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const-string/jumbo v2, "rollbackId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v1

    const-string v2, "isStaged"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "causePackages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result p0

    const-string v1, "committedSessionId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    return-object v0
.end method

.method private static toJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 375
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 376
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 377
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 378
    goto :goto_9

    .line 379
    :cond_1d
    return-object v0
.end method

.method private static toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 304
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v1

    const-string p0, "longVersionCode"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 306
    return-object v0
.end method

.method private static toJson(Landroid/content/rollback/PackageRollbackInfo;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 317
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackFrom"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "versionRolledBackTo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v2

    .line 322
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v3

    .line 323
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v4, "pendingBackups"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "pendingRestores"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v1

    const-string v2, "isApex"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 328
    invoke-static {v3}, Lcom/android/server/rollback/RollbackStore;->convertToJsonArray(Landroid/util/IntArray;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "installedUsers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {p0}, Landroid/content/rollback/PackageRollbackInfo;->getCeSnapshotInodes()Landroid/util/SparseLongArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/rollback/RollbackStore;->ceSnapshotInodesToJson(Landroid/util/SparseLongArray;)Lorg/json/JSONArray;

    move-result-object p0

    const-string v1, "ceSnapshotInodes"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    return-object v0
.end method

.method private static versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    const-string/jumbo v0, "packageName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "longVersionCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 312
    new-instance p0, Landroid/content/pm/VersionedPackage;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method

.method private static versionedPackagesFromJson(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 369
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->versionedPackageFromJson(Lorg/json/JSONObject;)Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 371
    :cond_1a
    return-object v0
.end method

.method private static versionedPackagesToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 358
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 359
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 360
    invoke-static {v1}, Lcom/android/server/rollback/RollbackStore;->toJson(Landroid/content/pm/VersionedPackage;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 361
    goto :goto_9

    .line 362
    :cond_1d
    return-object v0
.end method


# virtual methods
.method createNonStagedRollback(I)Lcom/android/server/rollback/RollbackData;
    .registers 5

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    new-instance v1, Lcom/android/server/rollback/RollbackData;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/rollback/RollbackData;-><init>(ILjava/io/File;I)V

    return-object v1
.end method

.method createStagedRollback(II)Lcom/android/server/rollback/RollbackData;
    .registers 6

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/android/server/rollback/RollbackData;

    invoke-direct {v1, p1, v0, p2}, Lcom/android/server/rollback/RollbackData;-><init>(ILjava/io/File;I)V

    return-object v1
.end method

.method deleteRollbackData(Lcom/android/server/rollback/RollbackData;)V
    .registers 2

    .line 276
    iget-object p1, p1, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 277
    return-void
.end method

.method loadAllRollbackData()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 81
    iget-object v1, p0, Lcom/android/server/rollback/RollbackStore;->mRollbackDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_41

    aget-object v4, v1, v3

    .line 82
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 84
    :try_start_1c
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->loadRollbackData(Ljava/io/File;)Lcom/android/server/rollback/RollbackData;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_24

    .line 88
    goto :goto_3e

    .line 85
    :catch_24
    move-exception v5

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read rollback data at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RollbackManager"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    invoke-static {v4}, Lcom/android/server/rollback/RollbackStore;->removeFile(Ljava/io/File;)V

    .line 81
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 91
    :cond_41
    return-object v0
.end method

.method saveRollbackData(Lcom/android/server/rollback/RollbackData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 257
    const-string v1, "info"

    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackStore;->rollbackInfoToJson(Landroid/content/rollback/RollbackInfo;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v1, "timestamp"

    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v1, "stagedSessionId"

    iget v2, p1, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v1, "state"

    iget v2, p1, Lcom/android/server/rollback/RollbackData;->state:I

    invoke-static {v2}, Lcom/android/server/rollback/RollbackData;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "apkSessionId"

    iget v2, p1, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v1, "restoreUserDataInProgress"

    iget-boolean v2, p1, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    const-string/jumbo v3, "rollback.json"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 265
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_58} :catch_5a

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catch_5a
    move-exception p1

    .line 268
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
