.class public abstract Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/SettingBase;
.source "PackageSettingBase.java"


# static fields
.field static final DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field categoryHint:I

.field childPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field cpuAbiOverrideString:Ljava/lang/String;

.field firstInstallTime:J

.field forceFull:Z

.field installPermissionsFixed:Z

.field installerPackageName:Ljava/lang/String;

.field isOrphaned:Z

.field keySetData:Lcom/android/server/pm/PackageKeySetData;

.field lastUpdateTime:J

.field legacyNativeLibraryPathString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mOldCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation
.end field

.field mzApp:Z

.field public final name:Ljava/lang/String;

.field parentPackageName:Ljava/lang/String;

.field primaryCpuAbiString:Ljava/lang/String;

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field secondaryCpuAbiString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field timeStamp:J

.field uidError:Z

.field updateAvailable:Z

.field usesStaticLibraries:[Ljava/lang/String;

.field usesStaticLibrariesVersions:[J

.field verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field versionCode:J

.field volumeUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 109
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .registers 4
    .param p1, "base"  # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "realName"  # Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 107
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->forceFull:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->mzApp:Z

    .line 169
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 172
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V
    .registers 33
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "realName"  # Ljava/lang/String;
    .param p3, "codePath"  # Ljava/io/File;
    .param p4, "resourcePath"  # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"  # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"  # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"  # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"  # Ljava/lang/String;
    .param p9, "pVersionCode"  # J
    .param p11, "pkgFlags"  # I
    .param p12, "pkgPrivateFlags"  # I
    .param p13, "parentPackageName"  # Ljava/lang/String;
    .param p15, "usesStaticLibraries"  # [Ljava/lang/String;
    .param p16, "usesStaticLibrariesVersions"  # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .line 148
    .local p14, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p14

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct {v9, v11, v12}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 107
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 131
    const/4 v0, -0x1

    iput v0, v9, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/pm/PackageSettingBase;->forceFull:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/server/pm/PackageSettingBase;->mzApp:Z

    .line 149
    move-object/from16 v13, p1

    iput-object v13, v9, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 150
    move-object/from16 v14, p2

    iput-object v14, v9, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 151
    move-object/from16 v15, p13

    iput-object v15, v9, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 152
    if-eqz v10, :cond_36

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    iput-object v0, v9, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 154
    move-object/from16 v7, p15

    iput-object v7, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 155
    move-object/from16 v8, p16

    iput-object v8, v9, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 158
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 7
    .param p1, "orig"  # Lcom/android/server/pm/PackageSettingBase;

    .line 250
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_b
    move-object v2, v1

    :goto_c
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 252
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 254
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 255
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 256
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 257
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 258
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 259
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 260
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 261
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 266
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 269
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 270
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 271
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5c
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 273
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 275
    .end local v0  # "i":I
    :cond_7a
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 276
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 277
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 278
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 279
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 280
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_97

    .line 281
    :cond_96
    move-object v0, v1

    :goto_97
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 282
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_a3

    .line 283
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    goto :goto_a4

    .line 284
    :cond_a3
    nop

    :goto_a4
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 285
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 286
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"  # I

    .line 289
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 290
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_15

    .line 291
    new-instance v1, Landroid/content/pm/PackageUserState;

    invoke-direct {v1}, Landroid/content/pm/PackageUserState;-><init>()V

    move-object v0, v1

    .line 292
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    :cond_15
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 524
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .registers 5
    .param p1, "componentClassName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 528
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 621
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 2
    .param p1, "orig"  # Lcom/android/server/pm/PackageSettingBase;

    .line 245
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 247
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 540
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 541
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    .line 542
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    nop

    .line 543
    .local v0, "changed":Z
    :goto_12
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 544
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "componentClassName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 532
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 533
    .local v1, "state":Landroid/content/pm/PackageUserState;
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    .line 534
    iget-object v0, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    nop

    .line 535
    .local v0, "changed":Z
    :goto_12
    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 536
    return v0
.end method

.method getCeDataInode(I)J
    .registers 4
    .param p1, "userId"  # I

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 5
    .param p1, "componentName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 557
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 558
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 559
    const/4 v1, 0x1

    return v1

    .line 560
    :cond_12
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 561
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 562
    const/4 v1, 0x2

    return v1

    .line 564
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getDistractionFlags(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    return v0
.end method

.method getDomainVerificationStatusForUser(I)J
    .registers 8
    .param p1, "userId"  # I

    .line 604
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 605
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v1, v1

    .line 606
    .local v1, "result":J
    iget v3, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 607
    return-wide v1
.end method

.method getEnabled(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->enabled:I

    return v0
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object v0
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"  # I

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 662
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object v1
.end method

.method getHidden(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    return v0
.end method

.method getInstallReason(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageUserState;->installReason:I

    return v0
.end method

.method getInstalled(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->installed:Z

    return v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantApp(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    return v0
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 2

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getNotInstalledUserIds()[I
    .registers 8

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 575
    .local v1, "userStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1b

    .line 576
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v3, :cond_18

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 575
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 580
    .end local v2  # "i":I
    :cond_1b
    if-nez v0, :cond_20

    sget-object v2, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v2

    .line 581
    :cond_20
    new-array v2, v0, [I

    .line 582
    .local v2, "excludedUserIds":[I
    const/4 v3, 0x0

    .line 583
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-ge v4, v1, :cond_40

    .line 584
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    iget-boolean v5, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v5, :cond_3d

    .line 585
    add-int/lit8 v5, v3, 0x1

    .end local v3  # "idx":I
    .local v5, "idx":I
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v2, v3

    move v3, v5

    .line 583
    .end local v5  # "idx":I
    .restart local v3  # "idx":I
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 588
    .end local v4  # "i":I
    :cond_40
    return-object v2
.end method

.method getNotLaunched(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return v0
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .registers 3
    .param p1, "userId"  # I

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    return v0
.end method

.method getSuspended(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    return v0
.end method

.method getUserState()Landroid/util/SparseArray;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/PackageUserState;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "codePath"  # Ljava/io/File;
    .param p2, "resourcePath"  # Ljava/io/File;
    .param p3, "legacyNativeLibraryPathString"  # Ljava/lang/String;
    .param p4, "primaryCpuAbiString"  # Ljava/lang/String;
    .param p5, "secondaryCpuAbiString"  # Ljava/lang/String;
    .param p6, "cpuAbiOverrideString"  # Ljava/lang/String;
    .param p7, "pVersionCode"  # J

    .line 177
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 180
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 183
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 184
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 185
    iput-wide p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 186
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 187
    return-void
.end method

.method isAnyInstalled([I)Z
    .registers 7
    .param p1, "users"  # [I

    .line 352
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget v3, p1, v2

    .line 353
    .local v3, "user":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_11

    .line 354
    const/4 v0, 0x1

    return v0

    .line 352
    .end local v3  # "user":I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 357
    :cond_14
    return v1
.end method

.method public isForceFull()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->forceFull:Z

    return v0
.end method

.method public isSharedUser()Z
    .registers 2

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .registers 7
    .param p1, "userId"  # I
    .param p2, "disabled"  # Z
    .param p3, "enabled"  # Z

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 514
    .local v0, "state":Landroid/content/pm/PackageUserState;
    const/4 v1, 0x1

    if-eqz p2, :cond_12

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_12

    .line 515
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 517
    :cond_12
    if-eqz p3, :cond_1f

    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_1f

    .line 518
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 520
    :cond_1f
    return-object v0
.end method

.method queryInstalledUsers([IZ)[I
    .registers 9
    .param p1, "users"  # [I
    .param p2, "installed"  # Z

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "num":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0  # "num":I
    .local v3, "num":I
    :goto_5
    if-ge v0, v1, :cond_14

    aget v4, p1, v0

    .line 363
    .local v4, "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_11

    .line 364
    add-int/lit8 v3, v3, 0x1

    .line 362
    .end local v4  # "user":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 367
    :cond_14
    new-array v0, v3, [I

    .line 368
    .local v0, "res":[I
    const/4 v1, 0x0

    .line 369
    .end local v3  # "num":I
    .local v1, "num":I
    array-length v3, p1

    :goto_18
    if-ge v2, v3, :cond_29

    aget v4, p1, v2

    .line 370
    .restart local v4  # "user":I
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_26

    .line 371
    aput v4, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 369
    .end local v4  # "user":I
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 375
    :cond_29
    return-object v0
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4
    .param p1, "userId"  # I

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 299
    .local v0, "state":Landroid/content/pm/PackageUserState;
    if-nez v0, :cond_d

    .line 300
    sget-object v1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object v1

    .line 302
    :cond_d
    iget v1, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v1, v0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 303
    return-object v0
.end method

.method removeUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 570
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "componentClassName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 549
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 550
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_12

    :cond_11
    move v1, v2

    .line 551
    .local v1, "changed":Z
    :goto_12
    iget-object v3, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v3, :cond_1d

    .line 552
    iget-object v2, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    or-int/2addr v1, v2

    .line 553
    return v1
.end method

.method setCeDataInode(JI)V
    .registers 5
    .param p1, "ceDataInode"  # J
    .param p3, "userId"  # I

    .line 383
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-wide p1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 384
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 499
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 500
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 508
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 509
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 510
    return-void
.end method

.method setDistractionFlags(II)V
    .registers 4
    .param p1, "distractionFlags"  # I
    .param p2, "userId"  # I

    .line 420
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 421
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .registers 6
    .param p1, "status"  # I
    .param p2, "generation"  # I
    .param p3, "userId"  # I

    .line 611
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 612
    .local v0, "state":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 613
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 614
    iput p2, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 616
    :cond_b
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .registers 5
    .param p1, "state"  # I
    .param p2, "userId"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 307
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 308
    .local v0, "st":Landroid/content/pm/PackageUserState;
    iput p1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 309
    iput-object p3, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 310
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .registers 4
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 495
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-object p1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 496
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 5
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 503
    .local p1, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 504
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 505
    return-void
.end method

.method public setForceFull(Z)V
    .registers 2
    .param p1, "forceFull"  # Z

    .line 231
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->forceFull:Z

    .line 232
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "harmfulAppWarning"  # Ljava/lang/String;

    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 657
    .local v0, "userState":Landroid/content/pm/PackageUserState;
    iput-object p2, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 658
    return-void
.end method

.method setHidden(ZI)V
    .registers 4
    .param p1, "hidden"  # Z
    .param p2, "userId"  # I

    .line 412
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 413
    return-void
.end method

.method setInstallReason(II)V
    .registers 4
    .param p1, "installReason"  # I
    .param p2, "userId"  # I

    .line 333
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput p1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 334
    return-void
.end method

.method setInstalled(ZI)V
    .registers 4
    .param p1, "inst"  # Z
    .param p2, "userId"  # I

    .line 321
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 322
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"  # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 191
    return-void
.end method

.method setInstantApp(ZI)V
    .registers 4
    .param p1, "instantApp"  # Z
    .param p2, "userId"  # I

    .line 442
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 443
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 2
    .param p1, "info"  # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 596
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 597
    return-void
.end method

.method setNotLaunched(ZI)V
    .registers 5
    .param p1, "stop"  # Z
    .param p2, "userId"  # I

    .line 399
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 402
    if-nez p1, :cond_11

    .line 403
    invoke-static {}, Lcom/flyme/server/pm/FlymeDexOptManager;->getInstance()Lcom/flyme/server/pm/FlymeDexOptManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flyme/server/pm/FlymeDexOptManager;->addFirstLaunchedPackage(Ljava/lang/String;)V

    .line 405
    :cond_11
    return-void
.end method

.method setOverlayPaths(Ljava/util/List;I)V
    .registers 5
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 337
    .local p1, "overlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    goto :goto_14

    .line 338
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_14
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 339
    return-void
.end method

.method setStopped(ZI)V
    .registers 4
    .param p1, "stop"  # Z
    .param p2, "userId"  # I

    .line 391
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 392
    return-void
.end method

.method setSuspended(ZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .registers 10
    .param p1, "suspended"  # Z
    .param p2, "suspendingPackage"  # Ljava/lang/String;
    .param p3, "dialogInfo"  # Landroid/content/pm/SuspendDialogInfo;
    .param p4, "appExtras"  # Landroid/os/PersistableBundle;
    .param p5, "launcherExtras"  # Landroid/os/PersistableBundle;
    .param p6, "userId"  # I

    .line 429
    invoke-direct {p0, p6}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 430
    .local v0, "existingUserState":Landroid/content/pm/PackageUserState;
    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 431
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    move-object v2, p2

    goto :goto_c

    :cond_b
    move-object v2, v1

    :goto_c
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 432
    if-eqz p1, :cond_12

    move-object v2, p3

    goto :goto_13

    :cond_12
    move-object v2, v1

    :goto_13
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 433
    if-eqz p1, :cond_19

    move-object v2, p4

    goto :goto_1a

    :cond_19
    move-object v2, v1

    :goto_1a
    iput-object v2, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 434
    if-eqz p1, :cond_1f

    move-object v1, p5

    :cond_1f
    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 435
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3
    .param p1, "newStamp"  # J

    .line 206
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 207
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .registers 2
    .param p1, "updateAvailable"  # Z

    .line 210
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 211
    return-void
.end method

.method setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    .registers 40
    .param p1, "userId"  # I
    .param p2, "ceDataInode"  # J
    .param p4, "enabled"  # I
    .param p5, "installed"  # Z
    .param p6, "stopped"  # Z
    .param p7, "notLaunched"  # Z
    .param p8, "hidden"  # Z
    .param p9, "distractionFlags"  # I
    .param p10, "suspended"  # Z
    .param p11, "suspendingPackage"  # Ljava/lang/String;
    .param p12, "dialogInfo"  # Landroid/content/pm/SuspendDialogInfo;
    .param p13, "suspendedAppExtras"  # Landroid/os/PersistableBundle;
    .param p14, "suspendedLauncherExtras"  # Landroid/os/PersistableBundle;
    .param p15, "instantApp"  # Z
    .param p16, "virtualPreload"  # Z
    .param p17, "lastDisableAppCaller"  # Ljava/lang/String;
    .param p20, "domainVerifState"  # I
    .param p21, "linkGeneration"  # I
    .param p22, "installReason"  # I
    .param p23, "harmfulAppWarning"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIZZZZIZ",
            "Ljava/lang/String;",
            "Landroid/content/pm/SuspendDialogInfo;",
            "Landroid/os/PersistableBundle;",
            "Landroid/os/PersistableBundle;",
            "ZZ",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 462
    .local p18, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p19, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 463
    .local v0, "state":Landroid/content/pm/PackageUserState;
    move-wide/from16 v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 464
    move/from16 v3, p4

    iput v3, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 465
    move/from16 v4, p5

    iput-boolean v4, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 466
    move/from16 v5, p6

    iput-boolean v5, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 467
    move/from16 v6, p7

    iput-boolean v6, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 468
    move/from16 v7, p8

    iput-boolean v7, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 469
    move/from16 v8, p9

    iput v8, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 470
    move/from16 v9, p10

    iput-boolean v9, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 471
    move-object/from16 v10, p11

    iput-object v10, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 472
    move-object/from16 v11, p12

    iput-object v11, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 473
    move-object/from16 v12, p13

    iput-object v12, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 474
    move-object/from16 v13, p14

    iput-object v13, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 475
    move-object/from16 v14, p17

    iput-object v14, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 476
    move-object/from16 v15, p18

    iput-object v15, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 477
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 478
    move/from16 v2, p20

    iput v2, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 479
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 480
    move/from16 v1, p22

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 481
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 482
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 483
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 484
    return-void
.end method

.method setVirtualPreload(ZI)V
    .registers 4
    .param p1, "virtualPreload"  # Z
    .param p2, "userId"  # I

    .line 450
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    iput-boolean p1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 451
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .registers 2
    .param p1, "volumeUuid"  # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 199
    return-void
.end method

.method protected updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;
    .registers 6
    .param p1, "other"  # Lcom/android/server/pm/PackageSettingBase;

    .line 666
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 667
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 668
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 669
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 670
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 671
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 672
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 673
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 674
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 675
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 676
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 677
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 678
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 679
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 680
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 681
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 682
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 683
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 684
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 685
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 686
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 687
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 688
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 689
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 690
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 691
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 692
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 694
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_81

    .line 695
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v1, :cond_7e

    .line 696
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 697
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_81

    .line 699
    :cond_7e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    .line 702
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_87
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a5

    .line 704
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 706
    .end local v0  # "i":I
    :cond_a5
    return-object p0
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 625
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_95

    .line 626
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 627
    .local v2, "userToken":J
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 628
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageUserState;

    .line 629
    .local v5, "state":Landroid/content/pm/PackageUserState;
    const-wide v6, 0x10500000001L

    invoke-virtual {p1, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 631
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v6, :cond_29

    .line 632
    const/4 v6, 0x2

    .local v6, "installType":I
    goto :goto_30

    .line 633
    .end local v6  # "installType":I
    :cond_29
    iget-boolean v6, v5, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v6, :cond_2f

    .line 634
    const/4 v6, 0x1

    .restart local v6  # "installType":I
    goto :goto_30

    .line 636
    .end local v6  # "installType":I
    :cond_2f
    const/4 v6, 0x0

    .line 638
    .restart local v6  # "installType":I
    :goto_30
    const-wide v7, 0x10e00000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 639
    const-wide v7, 0x10800000003L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 640
    const-wide v7, 0x1050000000aL

    iget v9, v5, Landroid/content/pm/PackageUserState;->distractionFlags:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 641
    const-wide v7, 0x10800000004L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 642
    iget-boolean v7, v5, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v7, :cond_64

    .line 643
    const-wide v7, 0x10900000009L

    iget-object v9, v5, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 645
    :cond_64
    const-wide v7, 0x10800000005L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 646
    const-wide v7, 0x10800000006L

    iget-boolean v9, v5, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 647
    const-wide v7, 0x10e00000007L

    iget v9, v5, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 648
    const-wide v7, 0x10900000008L

    iget-object v9, v5, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 651
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 625
    .end local v2  # "userToken":J
    .end local v4  # "userId":I
    .end local v5  # "state":Landroid/content/pm/PackageUserState;
    .end local v6  # "installType":I
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 653
    .end local v1  # "i":I
    :cond_95
    return-void
.end method
