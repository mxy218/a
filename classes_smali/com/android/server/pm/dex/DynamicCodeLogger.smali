.class public Lcom/android/server/pm/dex/DynamicCodeLogger;
.super Ljava/lang/Object;
.source "DynamicCodeLogger.java"


# static fields
.field private static final DCL_DEX_SUBTAG:Ljava/lang/String; = "dcl"

.field private static final DCL_NATIVE_SUBTAG:Ljava/lang/String; = "dcln"

.field private static final SNET_TAG:I = 0x534e4554

.field private static final TAG:Ljava/lang/String; = "DynamicCodeLogger"


# instance fields
.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V
    .registers 4

    .line 65
    new-instance v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;Lcom/android/server/pm/dex/PackageDynamicCodeLoading;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 72
    iput-object p3, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 73
    iput-object p2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    .line 74
    return-void
.end method

.method private fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 188
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 189
    return v0

    .line 193
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p2, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_1b

    return p1

    .line 195
    :catch_1b
    move-exception p1

    .line 196
    return v0
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->clear()V

    .line 245
    return-void
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object p1

    return-object p1
.end method

.method public logDynamicCodeLoading(Ljava/lang/String;)V
    .registers 21

    .line 84
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    move-result-object v0

    .line 85
    if-nez v0, :cond_b

    .line 86
    return-void

    .line 89
    :cond_b
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 90
    nop

    .line 92
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move v2, v11

    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_191

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 95
    iget v14, v13, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 97
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 99
    const-string v7, "DynamicCodeLogger"

    if-ltz v0, :cond_4b

    .line 100
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    move/from16 v16, v2

    goto :goto_8a

    .line 102
    :cond_4b
    nop

    .line 105
    :try_start_4c
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 106
    invoke-interface {v0, v8, v11, v14}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 107
    if-nez v0, :cond_56

    const/4 v0, 0x0

    goto :goto_58

    :cond_56
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_58} :catch_59

    .line 110
    :goto_58
    goto :goto_5b

    .line 108
    :catch_59
    move-exception v0

    const/4 v0, 0x0

    .line 111
    :goto_5b
    invoke-virtual {v9, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    if-nez v0, :cond_87

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v3, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v3, v8, v14}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v3

    or-int/2addr v2, v3

    move-object v6, v0

    move/from16 v16, v2

    goto :goto_8a

    .line 112
    :cond_87
    move-object v6, v0

    move/from16 v16, v2

    .line 119
    :goto_8a
    if-nez v6, :cond_8f

    .line 120
    move/from16 v2, v16

    goto :goto_1d

    .line 125
    :cond_8f
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v12, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 126
    const/4 v0, 0x2

    goto :goto_a2

    .line 127
    :cond_99
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-direct {v1, v12, v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->fileIsUnder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 128
    const/4 v0, 0x1

    .line 135
    :goto_a2
    nop

    .line 141
    :try_start_a3
    iget-object v2, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_a9
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_a3 .. :try_end_a9} :catch_ba

    move-object v3, v12

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move-object v15, v6

    move-object/from16 v6, v17

    move-object v11, v7

    move v7, v0

    :try_start_b3
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Installer;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0
    :try_end_b7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b3 .. :try_end_b7} :catch_b8

    .line 146
    goto :goto_de

    .line 143
    :catch_b8
    move-exception v0

    goto :goto_bd

    :catch_ba
    move-exception v0

    move-object v15, v6

    move-object v11, v7

    .line 144
    :goto_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got InstallerException when hashing file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 148
    :goto_de
    iget-char v2, v13, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    const/16 v3, 0x44

    if-ne v2, v3, :cond_e7

    .line 149
    const-string v2, "dcl"

    goto :goto_e9

    .line 150
    :cond_e7
    const-string v2, "dcln"

    .line 151
    :goto_e9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    .line 155
    if-eqz v0, :cond_118

    array-length v4, v0

    const/16 v5, 0x20

    if-ne v4, v5, :cond_118

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_136

    .line 158
    :cond_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got no hash for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v12, v14}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v0, v16, v0

    move/from16 v16, v0

    .line 163
    :goto_136
    iget-object v0, v13, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    nop

    .line 165
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_154

    .line 166
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    goto :goto_161

    .line 169
    :cond_154
    :try_start_154
    iget-object v5, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_156} :catch_15e

    const/4 v7, 0x0

    :try_start_157
    invoke-interface {v5, v0, v7, v14}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_15b
    .catch Landroid/os/RemoteException; {:try_start_157 .. :try_end_15b} :catch_15c

    .line 173
    goto :goto_161

    .line 171
    :catch_15c
    move-exception v0

    goto :goto_160

    :catch_15e
    move-exception v0

    const/4 v7, 0x0

    :goto_160
    move v0, v6

    .line 176
    :goto_161
    if-eq v0, v6, :cond_166

    .line 177
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 179
    :cond_166
    goto :goto_13c

    .line 180
    :cond_167
    const/4 v7, 0x0

    move v11, v7

    move/from16 v2, v16

    goto/16 :goto_1d

    .line 130
    :cond_16d
    move/from16 v18, v11

    move-object v11, v7

    move/from16 v7, v18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not infer CE/DE storage for path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, v8, v12, v14}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    or-int v2, v16, v0

    .line 132
    move v11, v7

    goto/16 :goto_1d

    .line 182
    :cond_191
    if-eqz v2, :cond_198

    .line 183
    iget-object v0, v1, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 185
    :cond_198
    return-void
.end method

.method readAndSync(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read()V

    .line 261
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->syncData(Ljava/util/Map;)V

    .line 262
    return-void
.end method

.method recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v3, 0x44

    move-object v1, p3

    move-object v2, p2

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 214
    iget-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 216
    :cond_13
    return-void
.end method

.method public recordNative(ILjava/lang/String;)V
    .registers 11

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_26

    array-length v1, v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_27

    if-nez v1, :cond_c

    goto :goto_26

    .line 232
    :cond_c
    nop

    .line 234
    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 235
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 237
    iget-object v2, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    const/16 v5, 0x4e

    move-object v3, v7

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 239
    iget-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 241
    :cond_25
    return-void

    .line 227
    :cond_26
    :goto_26
    return-void

    .line 229
    :catch_27
    move-exception p1

    .line 231
    return-void
.end method

.method removePackage(Ljava/lang/String;)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removePackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 249
    iget-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 251
    :cond_d
    return-void
.end method

.method removeUserPackage(Ljava/lang/String;I)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->removeUserPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 255
    iget-object p1, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->maybeWriteAsync()V

    .line 257
    :cond_d
    return-void
.end method

.method writeDclEvent(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const p1, 0x534e4554

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 208
    return-void
.end method

.method writeNow()V
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeNow()V

    .line 266
    return-void
.end method
