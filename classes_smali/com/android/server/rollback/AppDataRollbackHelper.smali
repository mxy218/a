.class public Lcom/android/server/rollback/AppDataRollbackHelper;
.super Ljava/lang/Object;
.source "AppDataRollbackHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 52
    return-void
.end method

.method private static computePendingBackups(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackData;

    .line 170
    iget-object v2, v1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 171
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_48

    .line 173
    invoke-virtual {v4, p0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    .line 174
    const/4 v5, -0x1

    if-eq v4, v5, :cond_48

    .line 175
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v5, :cond_48

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_48
    goto :goto_1f

    .line 182
    :cond_49
    goto :goto_9

    .line 183
    :cond_4a
    return-object v0
.end method

.method private static computePendingRestores(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/rollback/PackageRollbackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackData;

    .line 200
    iget-object v2, v1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 201
    invoke-virtual {v3, p0}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v4

    .line 202
    if-eqz v4, :cond_42

    .line 203
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_42

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_42
    goto :goto_1f

    .line 209
    :cond_43
    goto :goto_9

    .line 211
    :cond_44
    return-object v0
.end method


# virtual methods
.method public commitPendingBackupAndRestoreForUser(ILjava/util/List;)Ljava/util/Set;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation

    .line 224
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v0, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 225
    invoke-static {v9, v2, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;->computePendingBackups(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 228
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 229
    invoke-static {v9, v3, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;->computePendingRestores(ILjava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 234
    nop

    .line 235
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 238
    nop

    .line 239
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 240
    if-eqz v5, :cond_50

    .line 241
    invoke-virtual {v4, v9}, Landroid/content/rollback/PackageRollbackInfo;->removePendingBackup(I)V

    .line 242
    invoke-virtual {v4, v9}, Landroid/content/rollback/PackageRollbackInfo;->removePendingRestoreInfo(I)V

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 244
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_50
    goto :goto_21

    .line 248
    :cond_51
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v12, "RollbackManager"

    if-nez v0, :cond_c7

    .line 249
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 250
    iget-object v0, v4, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 251
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v9}, Landroid/util/IntArray;->indexOf(I)I

    move-result v7

    .line 253
    const/4 v8, -0x1

    if-eq v7, v8, :cond_c5

    .line 255
    :try_start_8c
    iget-object v8, v1, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v4, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 256
    invoke-virtual {v14}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v14

    const/4 v15, 0x2

    .line 255
    invoke-virtual {v8, v13, v9, v14, v15}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)J

    move-result-wide v13

    .line 257
    invoke-virtual {v6, v9, v13, v14}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V

    .line 258
    invoke-virtual {v0, v7}, Landroid/util/IntArray;->remove(I)V
    :try_end_a3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8c .. :try_end_a3} :catch_a4

    .line 263
    goto :goto_c5

    .line 259
    :catch_a4
    move-exception v0

    .line 260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to create app data snapshot for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", userId: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-static {v12, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :cond_c5
    :goto_c5
    goto :goto_74

    .line 266
    :cond_c6
    goto :goto_5d

    .line 269
    :cond_c7
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13b

    .line 270
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/rollback/RollbackData;

    .line 271
    iget-object v0, v14, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/rollback/PackageRollbackInfo;

    .line 272
    invoke-virtual {v8, v9}, Landroid/content/rollback/PackageRollbackInfo;->getRestoreInfo(I)Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_135

    .line 275
    :try_start_fb
    iget-object v2, v1, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v8}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    iget-object v5, v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    iget-object v6, v14, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 276
    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v7
    :try_end_10b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_fb .. :try_end_10b} :catch_11b

    const/16 v16, 0x2

    .line 275
    move/from16 v6, p1

    move-object v1, v8

    move/from16 v8, v16

    :try_start_112
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z

    .line 278
    invoke-virtual {v1, v0}, Landroid/content/rollback/PackageRollbackInfo;->removeRestoreInfo(Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;)V
    :try_end_118
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_112 .. :try_end_118} :catch_119

    .line 282
    goto :goto_135

    .line 279
    :catch_119
    move-exception v0

    goto :goto_11d

    :catch_11b
    move-exception v0

    move-object v1, v8

    .line 280
    :goto_11d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to restore app data snapshot for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v12, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    :cond_135
    :goto_135
    move-object/from16 v1, p0

    goto :goto_e8

    .line 285
    :cond_138
    move-object/from16 v1, p0

    goto :goto_d1

    .line 288
    :cond_13b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-interface {v0, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 290
    return-object v0
.end method

.method public destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V
    .registers 13

    .line 138
    nop

    .line 139
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getCeSnapshotInodes()Landroid/util/SparseLongArray;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 141
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_12

    .line 142
    const/4 v1, 0x3

    move v8, v1

    goto :goto_14

    .line 141
    :cond_12
    const/4 v1, 0x1

    move v8, v1

    .line 145
    :goto_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p3

    move v6, p1

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/Installer;->destroyAppDataSnapshot(Ljava/lang/String;IJII)Z

    .line 147
    and-int/lit8 p1, v8, 0x2

    if-eqz p1, :cond_27

    .line 148
    invoke-virtual {v0, p3}, Landroid/util/SparseLongArray;->delete(I)V
    :try_end_27
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_14 .. :try_end_27} :catch_28

    .line 153
    :cond_27
    goto :goto_43

    .line 150
    :catch_28
    move-exception p1

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to delete app data snapshot for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 151
    const-string p3, "RollbackManager"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_43
    return-void
.end method

.method public isUserCredentialLocked(I)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 299
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 298
    :goto_f
    return p1
.end method

.method public restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z
    .registers 16

    .line 95
    nop

    .line 97
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingBackups()Landroid/util/IntArray;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPendingRestores()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    nop

    .line 104
    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {v0, p3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 105
    invoke-virtual {v0, p3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->remove(I)V

    .line 106
    move v9, v2

    goto :goto_31

    .line 110
    :cond_1d
    invoke-virtual {p0, p3}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 113
    new-instance v0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;

    invoke-direct {v0, p3, p4, p5}, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;-><init>(IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    move v9, v2

    goto :goto_31

    .line 117
    :cond_2d
    const/4 v2, 0x3

    const/4 v0, 0x0

    move v9, v2

    move v2, v0

    .line 122
    :goto_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p4

    move-object v6, p5

    move v7, p3

    move v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/Installer;->restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_3e
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_31 .. :try_end_3e} :catch_3f

    .line 127
    goto :goto_5a

    .line 124
    :catch_3f
    move-exception p1

    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to restore app data snapshot: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    const-string p3, "RollbackManager"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_5a
    return v2
.end method

.method public snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V
    .registers 11

    .line 59
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    .line 60
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_6c

    aget v3, v0, v2

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->isUserCredentialLocked(I)Z

    move-result v4

    const-string v5, "RollbackManager"

    if-eqz v4, :cond_35

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isn\'t unlocked, skipping CE userdata backup."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    nop

    .line 67
    invoke-virtual {p2, v3}, Landroid/content/rollback/PackageRollbackInfo;->addPendingBackup(I)V

    const/4 v4, 0x1

    goto :goto_36

    .line 69
    :cond_35
    const/4 v4, 0x3

    .line 73
    :goto_36
    :try_start_36
    iget-object v6, p0, Lcom/android/server/rollback/AppDataRollbackHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 74
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v6, v7, v3, p1, v4}, Lcom/android/server/pm/Installer;->snapshotAppData(Ljava/lang/String;III)J

    move-result-wide v6

    .line 75
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_47

    .line 76
    invoke-virtual {p2, v3, v6, v7}, Landroid/content/rollback/PackageRollbackInfo;->putCeSnapshotInode(IJ)V
    :try_end_47
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_36 .. :try_end_47} :catch_48

    .line 81
    :cond_47
    goto :goto_69

    .line 78
    :catch_48
    move-exception v4

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create app data snapshot for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 83
    :cond_6c
    return-void
.end method
