.class public Lcom/android/server/storage/CacheQuotaStrategy;
.super Ljava/lang/Object;
.source "CacheQuotaStrategy.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# static fields
.field private static final ATTR_PREVIOUS_BYTES:Ljava/lang/String; = "previousBytes"

.field private static final ATTR_QUOTA_IN_BYTES:Ljava/lang/String; = "bytes"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_UUID:Ljava/lang/String; = "uuid"

.field private static final CACHE_INFO_TAG:Ljava/lang/String; = "cache-info"

.field private static final TAG:Ljava/lang/String; = "CacheQuotaStrategy"

.field private static final TAG_QUOTA:Ljava/lang/String; = "quota"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

.field private final mQuotaMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/app/usage/ICacheQuotaService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/usage/UsageStatsManagerInternal;",
            "Lcom/android/server/pm/Installer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseLongArray;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 100
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/Installer;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    .line 101
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    .line 102
    new-instance p1, Lcom/android/internal/os/AtomicFile;

    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/io/File;

    .line 103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p4

    const-string/jumbo v0, "system"

    invoke-direct {p3, p4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p4, "cachequota.xml"

    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/lang/Object;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/storage/CacheQuotaStrategy;)Landroid/app/usage/ICacheQuotaService;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/storage/CacheQuotaStrategy;Landroid/app/usage/ICacheQuotaService;)Landroid/app/usage/ICacheQuotaService;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getUnfulfilledRequests()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private createServiceConnection()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_5

    .line 124
    return-void

    .line 127
    :cond_5
    new-instance v0, Lcom/android/server/storage/CacheQuotaStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/storage/CacheQuotaStrategy$1;-><init>(Lcom/android/server/storage/CacheQuotaStrategy;)V

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 160
    return-void
.end method

.method private disconnectService()V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_c

    .line 254
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 257
    :cond_c
    return-void
.end method

.method static getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 393
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "uuid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    const-string/jumbo v2, "uid"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 395
    const-string v3, "bytes"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 396
    new-instance p0, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {p0}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    .line 397
    invoke-virtual {p0, v1}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_32} :catch_33

    .line 396
    return-object p0

    .line 398
    :catch_33
    move-exception p0

    .line 399
    const-string p0, "CacheQuotaStrategy"

    const-string v1, "Invalid cache quota request, skipping."

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v0
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .registers 6

    .line 260
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    const-string v2, "CacheQuotaStrategy"

    if-nez v0, :cond_15

    .line 263
    const-string v0, "could not access the cache quota service: no package!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-object v1

    .line 267
    :cond_15
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.usage.CacheQuotaService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x84

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_3e

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_32

    goto :goto_3e

    .line 275
    :cond_32
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 276
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 272
    :cond_3e
    :goto_3e
    const-string v0, "No valid components found."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v1
.end method

.method private getUnfulfilledRequests()Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation

    .line 167
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 168
    const-wide v2, 0x7528ad000L

    sub-long v12, v10, v2

    .line 170
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 172
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v15

    .line 173
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 174
    iget-object v0, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 175
    const/4 v8, 0x0

    move v5, v8

    :goto_2c
    if-ge v5, v9, :cond_ac

    .line 176
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 177
    iget-object v2, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 178
    move/from16 v16, v5

    move-object/from16 v17, v6

    move-wide v5, v12

    move-object/from16 v18, v7

    move-wide v7, v10

    move/from16 v19, v9

    move v9, v0

    invoke-virtual/range {v2 .. v9}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 180
    if-nez v0, :cond_50

    .line 181
    move-object/from16 v6, v18

    const/4 v7, 0x0

    goto :goto_a5

    .line 184
    :cond_50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 185
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 189
    move-object/from16 v4, v17

    :try_start_66
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_68} :catch_99

    move-object/from16 v6, v18

    const/4 v7, 0x0

    :try_start_6b
    invoke-virtual {v6, v3, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 191
    new-instance v5, Landroid/app/usage/CacheQuotaHint$Builder;

    invoke-direct {v5}, Landroid/app/usage/CacheQuotaHint$Builder;-><init>()V

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 193
    invoke-virtual {v5, v8}, Landroid/app/usage/CacheQuotaHint$Builder;->setVolumeUuid(Ljava/lang/String;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v5

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 194
    invoke-virtual {v5, v3}, Landroid/app/usage/CacheQuotaHint$Builder;->setUid(I)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {v3, v0}, Landroid/app/usage/CacheQuotaHint$Builder;->setUsageStats(Landroid/app/usage/UsageStats;)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    const-wide/16 v8, -0x1

    .line 196
    invoke-virtual {v0, v8, v9}, Landroid/app/usage/CacheQuotaHint$Builder;->setQuota(J)Landroid/app/usage/CacheQuotaHint$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/usage/CacheQuotaHint$Builder;->build()Landroid/app/usage/CacheQuotaHint;

    move-result-object v0

    .line 191
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_91} :catch_97

    .line 201
    nop

    .line 202
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    goto :goto_54

    .line 198
    :catch_97
    move-exception v0

    goto :goto_9d

    :catch_99
    move-exception v0

    move-object/from16 v6, v18

    const/4 v7, 0x0

    .line 200
    :goto_9d
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    goto :goto_54

    .line 184
    :cond_a2
    move-object/from16 v6, v18

    const/4 v7, 0x0

    .line 175
    :goto_a5
    add-int/lit8 v5, v16, 0x1

    move v8, v7

    move/from16 v9, v19

    move-object v7, v6

    goto :goto_2c

    .line 204
    :cond_ac
    return-object v14
.end method

.method private insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    .registers 8

    .line 244
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseLongArray;

    .line 245
    if-nez v0, :cond_14

    .line 246
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mQuotaMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_14
    invoke-static {p2, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    invoke-virtual {v0, p1, p4, p5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 250
    return-void
.end method

.method private pushProcessedQuotas(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5e

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/CacheQuotaHint;

    .line 220
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v9

    .line 221
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-nez v3, :cond_18

    .line 222
    goto :goto_5b

    .line 226
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v11

    .line 227
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 229
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 227
    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 230
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 232
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 230
    move-object v3, p0

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/storage/CacheQuotaStrategy;->insertIntoQuotaMap(Ljava/lang/String;IIJ)V
    :try_end_3f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_18 .. :try_end_3f} :catch_40

    .line 237
    goto :goto_5b

    .line 233
    :catch_40
    move-exception v3

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set cache quota for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v4, "CacheQuotaStrategy"

    invoke-static {v4, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 240
    :cond_5e
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->disconnectService()V

    .line 241
    return-void
.end method

.method protected static readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 345
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 347
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 348
    :goto_11
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1c

    if-eq p0, v2, :cond_1c

    .line 350
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_11

    .line 353
    :cond_1c
    const/4 v3, 0x0

    if-ne p0, v2, :cond_27

    .line 354
    const-string p0, "CacheQuotaStrategy"

    const-string v0, "No quotas found in quota file."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-object v3

    .line 358
    :cond_27
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 359
    const-string v4, "cache-info"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 363
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 366
    :try_start_38
    const-string/jumbo v4, "previousBytes"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_43} :catch_71

    .line 371
    nop

    .line 373
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 375
    :cond_48
    if-ne v5, v1, :cond_61

    .line 376
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 377
    const-string/jumbo v7, "quota"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 378
    invoke-static {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->getRequestFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/usage/CacheQuotaHint;

    move-result-object v6

    .line 379
    if-nez v6, :cond_5e

    .line 380
    goto :goto_65

    .line 382
    :cond_5e
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_61
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 386
    :goto_65
    if-ne v5, v2, :cond_48

    .line 387
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 368
    :catch_71
    move-exception p0

    .line 369
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Previous bytes formatted incorrectly; aborting quota read."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    :cond_7a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid starting tag."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 323
    const-string v0, "cache-info"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 325
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "previousBytes"

    invoke-interface {p0, v1, p3, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const/4 p2, 0x0

    :goto_1d
    if-ge p2, v2, :cond_5c

    .line 328
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/CacheQuotaHint;

    .line 329
    const-string/jumbo v3, "quota"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    .line 331
    if-eqz v4, :cond_3b

    .line 332
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uuid"

    invoke-interface {p0, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_3b
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uid"

    invoke-interface {p0, v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-virtual {p3}, Landroid/app/usage/CacheQuotaHint;->getQuota()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    const-string v4, "bytes"

    invoke-interface {p0, v1, v4, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 338
    :cond_5c
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 340
    return-void
.end method

.method private writeXmlToFile(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)V"
        }
    .end annotation

    .line 280
    nop

    .line 282
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 284
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 285
    const-wide/16 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/storage/CacheQuotaStrategy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;J)V

    .line 286
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    .line 290
    goto :goto_2e

    .line 287
    :catch_21
    move-exception p1

    .line 288
    const-string v1, "CacheQuotaStrategy"

    const-string v2, "An error occurred while writing the cache quota file."

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    iget-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 291
    :goto_2e
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 209
    nop

    .line 210
    const-string/jumbo v0, "requests"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/storage/CacheQuotaStrategy;->writeXmlToFile(Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public recalculateQuotas()V
    .registers 6

    .line 110
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->createServiceConnection()V

    .line 112
    invoke-direct {p0}, Lcom/android/server/storage/CacheQuotaStrategy;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1b

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 115
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 119
    :cond_1b
    return-void
.end method

.method public setupQuotasFromFile()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    nop

    .line 299
    const-wide/16 v0, -0x1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mPreviousValuesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_48

    .line 301
    :try_start_9
    invoke-static {v2}, Lcom/android/server/storage/CacheQuotaStrategy;->readFromXml(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_d} :catch_30
    .catchall {:try_start_9 .. :try_end_d} :catchall_2e

    .line 304
    nop

    .line 305
    if-eqz v2, :cond_13

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_48

    .line 308
    :cond_13
    nop

    .line 310
    if-nez v3, :cond_1e

    .line 311
    const-string v2, "CacheQuotaStrategy"

    const-string v3, "An error occurred while parsing the cache quota file."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-wide v0

    .line 314
    :cond_1e
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/storage/CacheQuotaStrategy;->pushProcessedQuotas(Ljava/util/List;)V

    .line 316
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 299
    :catchall_2e
    move-exception v3

    goto :goto_3b

    .line 302
    :catch_30
    move-exception v3

    .line 303
    :try_start_31
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2e

    .line 299
    :goto_3b
    :try_start_3b
    throw v3
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 305
    :catchall_3c
    move-exception v4

    if-eqz v2, :cond_47

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v2

    :try_start_44
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v4
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception v2

    .line 307
    return-wide v0
.end method
