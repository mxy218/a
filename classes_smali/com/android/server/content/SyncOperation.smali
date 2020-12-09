.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final extras:Landroid/os/Bundle;

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 57
    const-string v0, "DataSettingsChanged"

    const-string v1, "AccountsUpdated"

    const-string v2, "ServiceChanged"

    const-string v3, "Periodic"

    const-string v4, "IsSyncable"

    const-string v5, "AutoSync"

    const-string v6, "MasterSyncAuto"

    const-string v7, "UserStart"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 20

    .line 108
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object v0, p1

    move v2, p2

    move-object/from16 v3, p7

    invoke-direct {v1, p1, v3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .registers 4

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 158
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 159
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 160
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 161
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 162
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 163
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 165
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 166
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 167
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 168
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 169
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 170
    iget p1, p1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iput p1, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .registers 21

    .line 120
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v5, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v6, Landroid/os/Bundle;

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v7, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v9, v0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v14, 0x0

    move-object v0, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 123
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZI)V
    .registers 24

    .line 115
    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .registers 15

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 130
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 131
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 132
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 133
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 134
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 135
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 136
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 137
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 138
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 139
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 140
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 141
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 142
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 143
    return-void
.end method

.method static extrasToString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 512
    invoke-static {p0, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 499
    if-nez p0, :cond_9

    .line 500
    const-string/jumbo p0, "null"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    return-void

    .line 503
    :cond_9
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 505
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    goto :goto_16

    .line 507
    :cond_37
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .registers 26

    .line 248
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 249
    return-object v1

    .line 262
    :cond_6
    const/4 v2, 0x0

    const-string v3, "SyncManagerJob"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    .line 263
    return-object v1

    .line 266
    :cond_10
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    const-string v4, "accountType"

    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    const-string/jumbo v6, "provider"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 269
    const v7, 0x7fffffff

    const-string/jumbo v8, "userId"

    invoke-virtual {v0, v8, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 270
    const-string/jumbo v9, "owningUid"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 271
    const-string/jumbo v9, "owningPackage"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 272
    const-string/jumbo v9, "reason"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 273
    const-string/jumbo v9, "source"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 274
    const-string v7, "allowParallelSyncs"

    invoke-virtual {v0, v7, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 275
    const-string v7, "isPeriodic"

    invoke-virtual {v0, v7, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 276
    const/4 v7, -0x1

    const-string/jumbo v9, "sourcePeriodicId"

    invoke-virtual {v0, v9, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 277
    const-string/jumbo v7, "periodMillis"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 278
    const-string v7, "flexMillis"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 279
    const-string/jumbo v7, "syncExemptionFlag"

    invoke-virtual {v0, v7, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 281
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 283
    const-string/jumbo v7, "syncExtras"

    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v7

    .line 284
    if-eqz v7, :cond_82

    .line 285
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 288
    :cond_82
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 289
    if-eqz v9, :cond_bd

    const-string v10, "ACCOUNT:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 290
    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v9

    .line 292
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v16, v7

    invoke-virtual {v9, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 293
    invoke-virtual {v9, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v7, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_bf

    .line 289
    :cond_bd
    move-object/from16 v16, v7

    .line 296
    :goto_bf
    move-object/from16 v7, v16

    goto :goto_8a

    .line 298
    :cond_c2
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v3, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v11, v1, v6, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 301
    new-instance v1, Lcom/android/server/content/SyncOperation;

    move-object v10, v1

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 304
    const-string v2, "jobId"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 305
    const-string v2, "expectedRuntime"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 306
    const-string/jumbo v2, "retries"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/server/content/SyncOperation;->retries:I

    .line 307
    return-object v1
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .registers 5

    .line 446
    const/4 v0, 0x1

    if-ltz p1, :cond_23

    .line 447
    if-eqz p0, :cond_1e

    .line 448
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_12

    array-length v2, v1

    if-ne v2, v0, :cond_12

    .line 450
    const/4 p0, 0x0

    aget-object p0, v1, p0

    return-object p0

    .line 452
    :cond_12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 453
    if-eqz p0, :cond_19

    .line 454
    return-object p0

    .line 456
    :cond_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 458
    :cond_1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 461
    :cond_23
    neg-int p0, p1

    sub-int/2addr p0, v0

    .line 462
    sget-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_2f

    .line 463
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 465
    :cond_2f
    aget-object p0, v0, p0

    return-object p0
.end method

.method private toKey()Ljava/lang/String;
    .registers 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, " isPeriodic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, " flex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 359
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .registers 18

    .line 147
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_8

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_8
    new-instance v16, Lcom/android/server/content/SyncOperation;

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    new-instance v7, Landroid/os/Bundle;

    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v7, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const/4 v9, 0x0

    iget v10, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    iget-wide v11, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v13, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 153
    return-object v16
.end method

.method dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .registers 11

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    const-string v1, "JobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    if-eqz p4, :cond_19

    const-string p4, "***"

    goto :goto_1f

    :cond_19
    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string p4, "/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string p4, " u"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 382
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const-string p4, " ["

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6d

    .line 388
    const-string v2, " ExpectedIn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 389
    invoke-static {v0, v2, v3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 392
    :cond_6d
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    const-string v4, "expedited"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 393
    const-string v2, " EXPEDITED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_7d
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v2, :cond_aa

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9e

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ExemptionFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    .line 402
    :cond_9e
    const-string v2, " STANDBY-EXEMPTED(TOP)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    goto :goto_ab

    .line 399
    :cond_a4
    const-string v2, " STANDBY-EXEMPTED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    goto :goto_ab

    .line 397
    :cond_aa
    nop

    .line 408
    :goto_ab
    const-string v2, " Reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v2}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-boolean p1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz p1, :cond_d6

    .line 411
    const-string p1, " (period="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-static {v0, v2, v3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 413
    const-string p1, " flex="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-static {v0, v2, v3}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)Ljava/lang/StringBuilder;

    .line 415
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_d6
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    if-lez p1, :cond_e4

    .line 418
    const-string p1, " Retries="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    :cond_e4
    if-nez p2, :cond_138

    .line 422
    const-string p1, " Owner={"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    if-eqz p3, :cond_11e

    .line 427
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 429
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 428
    invoke-virtual {p3, p1, p2}, Lcom/android/server/content/SyncAdapterStateFetcher;->getStandbyBucket(ILjava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {p3, p1}, Lcom/android/server/content/SyncAdapterStateFetcher;->isAppActive(I)Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 433
    const-string p1, " [ACTIVE]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_11e
    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_138

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 442
    :cond_138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method findPriority()I
    .registers 2

    .line 339
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 340
    const/16 v0, 0x14

    return v0

    .line 341
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 342
    const/16 v0, 0xa

    return v0

    .line 344
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method ignoreBackoff()Z
    .registers 4

    .line 479
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isAppStandbyExempted()Z
    .registers 2

    .line 495
    iget v0, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .registers 4

    .line 316
    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 317
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v0, v1, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    :cond_3a
    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    .line 317
    :goto_3d
    return p1
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .registers 3

    .line 335
    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isExpedited()Z
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .registers 4

    .line 471
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .registers 3

    .line 325
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .registers 8

    .line 329
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 330
    invoke-static {v0, v2, v1}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_26

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    .line 329
    :goto_27
    return v1
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .registers 4

    .line 527
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 528
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 529
    iget p1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 530
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 531
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 532
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .registers 10

    .line 188
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 190
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 191
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "accountType"

    const-string v5, "accountName"

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    iget-object v6, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 193
    instance-of v7, v6, Landroid/accounts/Account;

    if-eqz v7, :cond_54

    .line 194
    check-cast v6, Landroid/accounts/Account;

    .line 195
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 196
    iget-object v8, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v5, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCOUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 201
    goto :goto_b3

    :cond_54
    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_62

    .line 202
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b3

    .line 203
    :cond_62
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_70

    .line 204
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b3

    .line 205
    :cond_70
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_7e

    .line 206
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b3

    .line 207
    :cond_7e
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_8d

    .line 208
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_b3

    .line 209
    :cond_8d
    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_9b

    .line 210
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_b3

    .line 211
    :cond_9b
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_a5

    .line 212
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 213
    :cond_a5
    if-nez v6, :cond_ac

    .line 214
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 216
    :cond_ac
    const-string v3, "SyncManager"

    const-string v4, "Unknown extra type."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_b3
    goto/16 :goto_14

    .line 219
    :cond_b5
    const-string/jumbo v2, "syncExtras"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 221
    const/4 v1, 0x1

    const-string v2, "SyncManagerJob"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const-string/jumbo v2, "provider"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    const-string/jumbo v2, "owningUid"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    const-string/jumbo v2, "owningPackage"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 231
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    const-string v2, "allowParallelSyncs"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    iget v1, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v2, "jobId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 233
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const-string v2, "isPeriodic"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    iget v1, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const-string/jumbo v2, "sourcePeriodicId"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 235
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-string/jumbo v3, "periodMillis"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 236
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const-string v3, "flexMillis"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 237
    iget-wide v1, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    const-string v3, "expectedRuntime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 238
    iget v1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    const-string/jumbo v2, "retries"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 239
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    const-string/jumbo v2, "syncExemptionFlag"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 240
    return-object v0
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 3

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 366
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v0, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 518
    return-object v0

    .line 520
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
