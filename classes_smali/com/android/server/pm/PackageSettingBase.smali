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

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    .line 108
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;Ljava/lang/String;)V
    .registers 4

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingBase;-><init>(Lcom/android/server/pm/SettingBase;)V

    .line 106
    new-instance v0, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v0}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 163
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)V
    .registers 26
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

    .line 142
    move-object v0, p0

    move-object/from16 v1, p14

    move/from16 v2, p11

    move/from16 v3, p12

    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 106
    new-instance v2, Lcom/android/server/pm/PackageKeySetData;

    invoke-direct {v2}, Lcom/android/server/pm/PackageKeySetData;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 112
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    .line 130
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 143
    move-object v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 144
    move-object v2, p2

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 145
    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 146
    if-eqz v1, :cond_2d

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iput-object v2, v0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 148
    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 149
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 150
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method private doCopy(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 7

    .line 235
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_b
    move-object v2, v1

    :goto_c
    iput-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 237
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 238
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 240
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 241
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 242
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 243
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 244
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 245
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 246
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 248
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 249
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 251
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 253
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 254
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 255
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 257
    const/4 v0, 0x0

    :goto_5c
    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_7a

    .line 258
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 260
    :cond_7a
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 261
    iget-wide v2, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v2, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 262
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 263
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 264
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    if-eqz v0, :cond_96

    .line 265
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_97

    .line 266
    :cond_96
    move-object v0, v1

    :goto_97
    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 267
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    if-eqz v0, :cond_a3

    .line 268
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    goto :goto_a4

    .line 269
    :cond_a3
    nop

    :goto_a4
    iput-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 270
    iget-boolean p1, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 271
    return-void
.end method

.method private modifyUserState(I)Landroid/content/pm/PackageUserState;
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageUserState;

    .line 275
    if-nez v0, :cond_14

    .line 276
    new-instance v0, Landroid/content/pm/PackageUserState;

    invoke-direct {v0}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    :cond_14
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .registers 5

    .line 504
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .registers 5

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method clearDomainVerificationStatusForUser(I)V
    .registers 3

    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 601
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .registers 2

    .line 230
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->doCopy(Lcom/android/server/pm/PackageSettingBase;)V

    .line 232
    return-void
.end method

.method public bridge synthetic copyFrom(Lcom/android/server/pm/SettingBase;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    .line 520
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 521
    iget-object v1, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_11

    .line 522
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    nop

    .line 523
    :goto_12
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 524
    return p1
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .registers 5

    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 513
    iget-object v1, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_11

    .line 514
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    nop

    .line 515
    :goto_12
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 516
    return p1
.end method

.method getCeDataInode(I)J
    .registers 4

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    return-wide v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .registers 4

    .line 537
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 538
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_12

    iget-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 539
    const/4 p1, 0x1

    return p1

    .line 540
    :cond_12
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    iget-object p2, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 541
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 542
    const/4 p1, 0x2

    return p1

    .line 544
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method getDisabledComponents(I)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 471
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    return-object p1
.end method

.method getDistractionFlags(I)I
    .registers 2

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageUserState;->distractionFlags:I

    return p1
.end method

.method getDomainVerificationStatusForUser(I)J
    .registers 6

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 585
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    int-to-long v0, v0

    .line 586
    iget p1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    .line 587
    return-wide v0
.end method

.method getEnabled(I)I
    .registers 2

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    return p1
.end method

.method getEnabledComponents(I)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    return-object p1
.end method

.method getHarmfulAppWarning(I)Ljava/lang/String;
    .registers 2

    .line 641
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 642
    iget-object p1, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    return-object p1
.end method

.method getHidden(I)Z
    .registers 2

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    return p1
.end method

.method getInstallReason(I)I
    .registers 2

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageUserState;->installReason:I

    return p1
.end method

.method getInstalled(I)Z
    .registers 2

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    return p1
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantApp(I)Z
    .registers 2

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    return p1
.end method

.method getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method getLastDisabledAppCaller(I)Ljava/lang/String;
    .registers 2

    .line 302
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    return-object p1
.end method

.method public getNotInstalledUserIds()[I
    .registers 7

    .line 553
    nop

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 555
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_1d

    .line 556
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_1a

    .line 557
    add-int/lit8 v3, v3, 0x1

    .line 555
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 560
    :cond_1d
    if-nez v3, :cond_22

    sget-object v0, Lcom/android/server/pm/PackageSettingBase;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 561
    :cond_22
    new-array v2, v3, [I

    .line 562
    nop

    .line 563
    move v3, v1

    :goto_26
    if-ge v1, v0, :cond_42

    .line 564
    iget-object v4, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageUserState;

    iget-boolean v4, v4, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v4, :cond_3f

    .line 565
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v3

    move v3, v4

    .line 563
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 568
    :cond_42
    return-object v2
.end method

.method getNotLaunched(I)Z
    .registers 2

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    return p1
.end method

.method getOverlayPaths(I)[Ljava/lang/String;
    .registers 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    return-object v0
.end method

.method public getSignatures()[Landroid/content/pm/Signature;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-object v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method getStopped(I)Z
    .registers 2

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    return p1
.end method

.method getSuspended(I)Z
    .registers 2

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    return p1
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

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    return-object v0
.end method

.method getVirtulalPreload(I)Z
    .registers 2

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    return p1
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 171
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 174
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 176
    iput-object p4, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 177
    iput-object p5, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 178
    iput-object p6, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 179
    iput-wide p7, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 180
    new-instance p1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {p1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 181
    return-void
.end method

.method isAnyInstalled([I)Z
    .registers 6

    .line 337
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_14

    aget v3, p1, v2

    .line 338
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageSettingBase;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v3, :cond_11

    .line 339
    const/4 p1, 0x1

    return p1

    .line 337
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 342
    :cond_14
    return v1
.end method

.method public isSharedUser()Z
    .registers 2

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    return v0
.end method

.method modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;
    .registers 5

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 494
    const/4 v0, 0x1

    if-eqz p2, :cond_12

    iget-object p2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez p2, :cond_12

    .line 495
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 497
    :cond_12
    if-eqz p3, :cond_1f

    iget-object p2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez p2, :cond_1f

    .line 498
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 500
    :cond_1f
    return-object p1
.end method

.method queryInstalledUsers([IZ)[I
    .registers 9

    .line 346
    nop

    .line 347
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_5
    if-ge v2, v0, :cond_14

    aget v4, p1, v2

    .line 348
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v4

    if-ne v4, p2, :cond_11

    .line 349
    add-int/lit8 v3, v3, 0x1

    .line 347
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 352
    :cond_14
    new-array v0, v3, [I

    .line 353
    nop

    .line 354
    array-length v2, p1

    move v3, v1

    :goto_19
    if-ge v1, v2, :cond_2a

    aget v4, p1, v1

    .line 355
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSettingBase;->getInstalled(I)Z

    move-result v5

    if-ne v5, p2, :cond_27

    .line 356
    aput v4, v0, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    .line 354
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 360
    :cond_2a
    return-object v0
.end method

.method public readUserState(I)Landroid/content/pm/PackageUserState;
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageUserState;

    .line 284
    if-nez p1, :cond_d

    .line 285
    sget-object p1, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    return-object p1

    .line 287
    :cond_d
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 288
    return-object p1
.end method

.method removeUser(I)V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 550
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .registers 6

    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/pm/PackageSettingBase;->modifyUserStateComponents(IZZ)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 529
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 530
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    .line 531
    :goto_12
    iget-object v2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1d

    .line 532
    iget-object p2, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1e

    :cond_1d
    nop

    :goto_1e
    or-int p1, v0, v1

    .line 533
    return p1
.end method

.method setCeDataInode(JI)V
    .registers 4

    .line 368
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p3

    iput-wide p1, p3, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 369
    return-void
.end method

.method setDisabledComponents(Landroid/util/ArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 479
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-object p1, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 480
    return-void
.end method

.method setDisabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 488
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-eqz p1, :cond_c

    .line 489
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p2, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 490
    return-void
.end method

.method setDistractionFlags(II)V
    .registers 3

    .line 400
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput p1, p2, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 401
    return-void
.end method

.method setDomainVerificationStatusForUser(III)V
    .registers 5

    .line 591
    invoke-direct {p0, p3}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p3

    .line 592
    iput p1, p3, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 593
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 594
    iput p2, p3, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 596
    :cond_b
    return-void
.end method

.method setEnabled(IILjava/lang/String;)V
    .registers 4

    .line 292
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    .line 293
    iput p1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    .line 294
    iput-object p3, p2, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 295
    return-void
.end method

.method setEnabledComponents(Landroid/util/ArraySet;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 475
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-object p1, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 476
    return-void
.end method

.method setEnabledComponentsCopy(Landroid/util/ArraySet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 483
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-eqz p1, :cond_c

    .line 484
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p2, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 485
    return-void
.end method

.method setHarmfulAppWarning(ILjava/lang/String;)V
    .registers 3

    .line 636
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    .line 637
    iput-object p2, p1, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 638
    return-void
.end method

.method setHidden(ZI)V
    .registers 3

    .line 392
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 393
    return-void
.end method

.method setInstallReason(II)V
    .registers 3

    .line 318
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput p1, p2, Landroid/content/pm/PackageUserState;->installReason:I

    .line 319
    return-void
.end method

.method setInstalled(ZI)V
    .registers 3

    .line 306
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    .line 307
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method setInstantApp(ZI)V
    .registers 3

    .line 422
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 423
    return-void
.end method

.method setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 577
    return-void
.end method

.method setNotLaunched(ZI)V
    .registers 3

    .line 384
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 385
    return-void
.end method

.method setOverlayPaths(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_14

    .line 323
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_14
    iput-object p1, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    .line 324
    return-void
.end method

.method setStopped(ZI)V
    .registers 3

    .line 376
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 377
    return-void
.end method

.method setSuspended(ZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;I)V
    .registers 8

    .line 409
    invoke-direct {p0, p6}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p6

    .line 410
    iput-boolean p1, p6, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 411
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    move-object p2, v0

    :goto_b
    iput-object p2, p6, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 412
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move-object p3, v0

    :goto_11
    iput-object p3, p6, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 413
    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move-object p4, v0

    :goto_17
    iput-object p4, p6, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 414
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p5, v0

    :goto_1d
    iput-object p5, p6, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 415
    return-void
.end method

.method public setTimeStamp(J)V
    .registers 3

    .line 200
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 201
    return-void
.end method

.method public setUpdateAvailable(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 205
    return-void
.end method

.method setUserState(IJIZZZZIZLjava/lang/String;Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    .registers 27
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

    .line 442
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 443
    move-wide v1, p2

    iput-wide v1, v0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 444
    move v1, p4

    iput v1, v0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 445
    move v1, p5

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 446
    move v1, p6

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 447
    move v1, p7

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 448
    move v1, p8

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 449
    move v1, p9

    iput v1, v0, Landroid/content/pm/PackageUserState;->distractionFlags:I

    .line 450
    move v1, p10

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 451
    move-object v1, p11

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    .line 452
    move-object v1, p12

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 453
    move-object/from16 v1, p13

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    .line 454
    move-object/from16 v1, p14

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    .line 455
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 456
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 457
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 458
    move/from16 v1, p20

    iput v1, v0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 459
    move/from16 v1, p21

    iput v1, v0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 460
    move/from16 v1, p22

    iput v1, v0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 461
    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 462
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 463
    move-object/from16 v1, p23

    iput-object v1, v0, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    .line 464
    return-void
.end method

.method setVirtualPreload(ZI)V
    .registers 3

    .line 430
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageSettingBase;->modifyUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 431
    return-void
.end method

.method public setVolumeUuid(Ljava/lang/String;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 193
    return-void
.end method

.method protected updateFrom(Lcom/android/server/pm/PackageSettingBase;)Lcom/android/server/pm/PackageSettingBase;
    .registers 6

    .line 646
    invoke-super {p0, p1}, Lcom/android/server/pm/SettingBase;->copyFrom(Lcom/android/server/pm/SettingBase;)V

    .line 647
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->parentPackageName:Ljava/lang/String;

    .line 648
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->childPackageNames:Ljava/util/List;

    .line 649
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 650
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 651
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 652
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 653
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibraries:[Ljava/lang/String;

    .line 654
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->usesStaticLibrariesVersions:[J

    .line 655
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 656
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->primaryCpuAbiString:Ljava/lang/String;

    .line 657
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->secondaryCpuAbiString:Ljava/lang/String;

    .line 658
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->cpuAbiOverrideString:Ljava/lang/String;

    .line 659
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 660
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 661
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 662
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:J

    .line 663
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 664
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 665
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->installPermissionsFixed:Z

    .line 666
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 667
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 668
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->isOrphaned:Z

    .line 669
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->volumeUuid:Ljava/lang/String;

    .line 670
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->categoryHint:I

    .line 671
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->updateAvailable:Z

    .line 672
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 674
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v0, :cond_81

    .line 675
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    if-eqz v1, :cond_7e

    .line 676
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 677
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_81

    .line 679
    :cond_7e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mOldCodePaths:Ljava/util/Set;

    .line 682
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 683
    const/4 v0, 0x0

    :goto_87
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_a5

    .line 684
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageUserState;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 686
    :cond_a5
    return-object p0
.end method

.method protected writeUsersInfoToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 605
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_96

    .line 606
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 607
    iget-object v5, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 608
    iget-object v6, p0, Lcom/android/server/pm/PackageSettingBase;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageUserState;

    .line 609
    const-wide v7, 0x10500000001L

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 611
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->instantApp:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_2b

    .line 612
    const/4 v5, 0x2

    goto :goto_32

    .line 613
    :cond_2b
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v5, :cond_31

    .line 614
    move v5, v7

    goto :goto_32

    .line 616
    :cond_31
    move v5, v1

    .line 618
    :goto_32
    const-wide v8, 0x10e00000002L

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 619
    const-wide v8, 0x10800000003L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->hidden:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 620
    const-wide v8, 0x1050000000aL

    iget v5, v6, Landroid/content/pm/PackageUserState;->distractionFlags:I

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 621
    const-wide v8, 0x10800000004L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 622
    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v5, :cond_66

    .line 623
    const-wide v8, 0x10900000009L

    iget-object v5, v6, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 625
    :cond_66
    const-wide v8, 0x10800000005L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->stopped:Z

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 626
    const-wide v8, 0x10800000006L

    iget-boolean v5, v6, Landroid/content/pm/PackageUserState;->notLaunched:Z

    xor-int/2addr v5, v7

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 627
    const-wide v7, 0x10e00000007L

    iget v5, v6, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 628
    const-wide v7, 0x10900000008L

    iget-object v5, v6, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {p1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 631
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 633
    :cond_96
    return-void
.end method
