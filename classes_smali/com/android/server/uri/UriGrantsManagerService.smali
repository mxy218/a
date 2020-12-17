.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field private static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field private static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field private static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field private static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final DEBUG:Z = false

.field private static final MAX_PERSISTED_URI_GRANTS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field private static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field private static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mGrantFile:Landroid/util/AtomicFile;

.field private final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field private final mLock:Ljava/lang/Object;

.field mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;

    .line 144
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 145
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 147
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "urigrants.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "uri-grants"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Landroid/content/Context;
    .param p2, "x1"  # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 108
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 108
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 108
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"  # Lcom/android/server/uri/UriPermission;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 108
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/uri/UriGrantsManagerService;

    .line 108
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 14
    .param p1, "pm"  # Landroid/content/pm/IPackageManager;
    .param p2, "pi"  # Landroid/content/pm/ProviderInfo;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "uid"  # I
    .param p5, "modeFlags"  # I

    .line 865
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_14

    .line 866
    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v2, p4, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_14

    .line 868
    const/4 v0, 0x0

    return v0

    .line 871
    :cond_14
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v0

    return v0
.end method

.method private checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 23
    .param p1, "pm"  # Landroid/content/pm/IPackageManager;
    .param p2, "pi"  # Landroid/content/pm/ProviderInfo;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "uid"  # I
    .param p5, "modeFlags"  # I
    .param p6, "considerUidPermissions"  # Z

    .line 876
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_e

    .line 877
    return v4

    .line 878
    :cond_e
    iget-boolean v0, v2, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v5, 0x0

    if-nez v0, :cond_14

    .line 879
    return v5

    .line 882
    :cond_14
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1a

    move v0, v4

    goto :goto_1b

    :cond_1a
    move v0, v5

    :goto_1b
    move v6, v0

    .line 883
    .local v6, "readMet":Z
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_22

    move v0, v4

    goto :goto_23

    :cond_22
    move v0, v5

    :goto_23
    move v7, v0

    .line 886
    .local v7, "writeMet":Z
    if-nez v6, :cond_3b

    :try_start_26
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v0, :cond_3b

    if-eqz p6, :cond_3b

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 887
    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3b

    .line 888
    const/4 v6, 0x1

    goto :goto_3b

    .line 948
    :catch_36
    move-exception v0

    move-object/from16 v10, p3

    goto/16 :goto_b0

    .line 890
    :cond_3b
    :goto_3b
    if-nez v7, :cond_4c

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v0, :cond_4c

    if-eqz p6, :cond_4c

    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 891
    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4c

    .line 892
    const/4 v7, 0x1

    .line 897
    :cond_4c
    iget-object v0, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v0, :cond_52

    move v0, v4

    goto :goto_53

    :cond_52
    move v0, v5

    .line 898
    .local v0, "allowDefaultRead":Z
    :goto_53
    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v8, :cond_59

    move v8, v4

    goto :goto_5a

    :cond_59
    move v8, v5

    .line 901
    .local v8, "allowDefaultWrite":Z
    :goto_5a
    iget-object v9, v2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_5c} :catch_36

    .line 902
    .local v9, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v9, :cond_a0

    .line 903
    move-object/from16 v10, p3

    :try_start_60
    iget-object v11, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 904
    .local v11, "path":Ljava/lang/String;
    array-length v12, v9

    .line 905
    .local v12, "i":I
    :goto_67
    if-lez v12, :cond_a2

    if-eqz v6, :cond_6d

    if-nez v7, :cond_a2

    .line 906
    :cond_6d
    add-int/lit8 v12, v12, -0x1

    .line 907
    aget-object v13, v9, v12

    .line 908
    .local v13, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v13, v11}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 909
    if-nez v6, :cond_8a

    .line 910
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v14

    .line 915
    .local v14, "pprperm":Ljava/lang/String;
    if-eqz v14, :cond_8a

    .line 916
    if-eqz p6, :cond_89

    invoke-interface {v1, v14, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_89

    .line 918
    const/4 v6, 0x1

    goto :goto_8a

    .line 920
    :cond_89
    const/4 v0, 0x0

    .line 924
    .end local v14  # "pprperm":Ljava/lang/String;
    :cond_8a
    :goto_8a
    if-nez v7, :cond_9d

    .line 925
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    .line 930
    .local v14, "ppwperm":Ljava/lang/String;
    if-eqz v14, :cond_9d

    .line 931
    if-eqz p6, :cond_9c

    invoke-interface {v1, v14, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_98} :catch_9e

    if-nez v15, :cond_9c

    .line 933
    const/4 v7, 0x1

    goto :goto_9d

    .line 935
    :cond_9c
    const/4 v8, 0x0

    .line 940
    .end local v13  # "pp":Landroid/content/pm/PathPermission;
    .end local v14  # "ppwperm":Ljava/lang/String;
    :cond_9d
    :goto_9d
    goto :goto_67

    .line 948
    .end local v0  # "allowDefaultRead":Z
    .end local v8  # "allowDefaultWrite":Z
    .end local v9  # "pps":[Landroid/content/pm/PathPermission;
    .end local v11  # "path":Ljava/lang/String;
    .end local v12  # "i":I
    :catch_9e
    move-exception v0

    goto :goto_b0

    .line 902
    .restart local v0  # "allowDefaultRead":Z
    .restart local v8  # "allowDefaultWrite":Z
    .restart local v9  # "pps":[Landroid/content/pm/PathPermission;
    :cond_a0
    move-object/from16 v10, p3

    .line 945
    :cond_a2
    if-eqz v0, :cond_a5

    const/4 v6, 0x1

    .line 946
    :cond_a5
    if-eqz v8, :cond_a8

    const/4 v7, 0x1

    .line 950
    .end local v0  # "allowDefaultRead":Z
    .end local v8  # "allowDefaultWrite":Z
    .end local v9  # "pps":[Landroid/content/pm/PathPermission;
    :cond_a8
    nop

    .line 952
    if-eqz v6, :cond_ae

    if-eqz v7, :cond_ae

    goto :goto_af

    :cond_ae
    move v4, v5

    :goto_af
    return v4

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    :goto_b0
    return v5
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"  # Ljava/lang/String;

    .line 988
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 991
    return-void

    .line 989
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 8
    .param p1, "sourcePkg"  # Ljava/lang/String;
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "targetUid"  # I
    .param p4, "grantUri"  # Lcom/android/server/uri/GrantUri;

    .line 699
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 700
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_13

    .line 701
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 705
    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    .line 706
    .local v1, "perm":Lcom/android/server/uri/UriPermission;
    if-nez v1, :cond_24

    .line 707
    new-instance v2, Lcom/android/server/uri/UriPermission;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    move-object v1, v2

    .line 708
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_24
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 5
    .param p1, "targetUid"  # I
    .param p2, "grantUri"  # Lcom/android/server/uri/GrantUri;

    .line 973
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 974
    .local v0, "targetUris":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_11

    .line 975
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriPermission;

    return-object v1

    .line 977
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPmInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 1280
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 1281
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1283
    :cond_e
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method private getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 7
    .param p1, "authority"  # Ljava/lang/String;
    .param p2, "userHandle"  # I
    .param p3, "pmFlags"  # I

    .line 994
    const/4 v0, 0x0

    .line 996
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    or-int/lit16 v2, p3, 0x800

    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 1000
    goto :goto_e

    .line 999
    :catch_d
    move-exception v1

    .line 1001
    :goto_e
    return-object v0
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 10
    .param p1, "targetUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I
    .param p5, "owner"  # Lcom/android/server/uri/UriPermissionOwner;

    .line 716
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 717
    return-void

    .line 726
    :cond_7
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "authority":Ljava/lang/String;
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 729
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_32

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for grant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UriGrantsManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_32
    and-int/lit16 v2, p4, 0x80

    if-eqz v2, :cond_39

    .line 735
    const/4 v2, 0x1

    iput-boolean v2, p3, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 737
    :cond_39
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    .line 739
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    invoke-virtual {v2, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)V

    .line 740
    return-void
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 9
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "cpi"  # Landroid/content/pm/ProviderInfo;

    .line 487
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "uriAuth":Ljava/lang/String;
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 489
    .local v1, "cpiAuth":Ljava/lang/String;
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 492
    :cond_14
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "cpiAuths":[Ljava/lang/String;
    array-length v3, v2

    .line 494
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2b

    .line 495
    aget-object v5, v2, v4

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    return v5

    .line 494
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 497
    .end local v4  # "i":I
    :cond_2b
    const/4 v4, 0x0

    return v4
.end method

.method private maybePrunePersistedUriGrants(I)Z
    .registers 9
    .param p1, "uid"  # I

    .line 507
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 508
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 509
    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_15

    return v1

    .line 511
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 512
    .local v2, "persisted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 513
    .local v5, "perm":Lcom/android/server/uri/UriPermission;
    iget v6, v5, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v6, :cond_34

    .line 514
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v5  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_34
    goto :goto_21

    .line 518
    :cond_35
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .line 519
    .local v4, "trimCount":I
    if-gtz v4, :cond_3d

    return v1

    .line 521
    :cond_3d
    new-instance v1, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v1}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    if-ge v1, v4, :cond_58

    .line 523
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 527
    .local v3, "perm":Lcom/android/server/uri/UriPermission;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 528
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 522
    .end local v3  # "perm":Lcom/android/server/uri/UriPermission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 531
    .end local v1  # "i":I
    :cond_58
    const/4 v1, 0x1

    return v1
.end method

.method private removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .registers 5
    .param p1, "perm"  # Lcom/android/server/uri/UriPermission;

    .line 956
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    .line 957
    return-void

    .line 959
    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 961
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v0, :cond_12

    .line 962
    return-void

    .line 966
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 968
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 970
    :cond_24
    return-void
.end method

.method private schedulePersistUriGrants()V
    .registers 5

    .line 981
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 982
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 985
    :cond_14
    return-void
.end method

.method private start()V
    .registers 3

    .line 152
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method private writeGrantedUriPermissions()V
    .registers 12

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1234
    .local v0, "startTime":J
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1235
    .local v2, "persist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/uri/UriPermission$Snapshot;>;"
    monitor-enter p0

    .line 1236
    :try_start_9
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1237
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v3, :cond_3d

    .line 1238
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1239
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 1240
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_39

    .line 1241
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .end local v7  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_39
    goto :goto_22

    .line 1237
    .end local v5  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1245
    .end local v3  # "size":I
    .end local v4  # "i":I
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_e2

    .line 1247
    const/4 v3, 0x0

    .line 1249
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 1251
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1252
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1253
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1254
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1256
    .local v7, "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string/jumbo v8, "sourceUserId"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v9, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1258
    const-string/jumbo v8, "targetUserId"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1259
    const-string/jumbo v8, "sourcePkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const-string/jumbo v8, "targetPkg"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const-string/jumbo v8, "uri"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v6, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const-string/jumbo v8, "prefix"

    iget-object v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1263
    const-string/jumbo v8, "modeFlags"

    iget v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-static {v4, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1264
    const-string v8, "createdTime"

    iget-wide v9, v7, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1265
    const-string/jumbo v8, "uri-grant"

    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    nop

    .end local v7  # "perm":Lcom/android/server/uri/UriPermission$Snapshot;
    goto :goto_67

    .line 1267
    :cond_ca
    const-string/jumbo v5, "uri-grants"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1270
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_d8} :catch_d9

    .line 1275
    .end local v4  # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_e1

    .line 1271
    :catch_d9
    move-exception v4

    .line 1272
    .local v4, "e":Ljava/io/IOException;
    if-eqz v3, :cond_e1

    .line 1273
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1276
    .end local v4  # "e":Ljava/io/IOException;
    :cond_e1
    :goto_e1
    return-void

    .line 1245
    .end local v3  # "fos":Ljava/io/FileOutputStream;
    :catchall_e2
    move-exception v3

    :try_start_e3
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v3
.end method


# virtual methods
.method checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 10
    .param p1, "callingUid"  # I
    .param p2, "cpi"  # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"  # I
    .param p4, "checkUser"  # Z

    .line 471
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 472
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_2a

    .line 473
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_2a

    .line 474
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/GrantUri;

    .line 475
    .local v3, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v4, v3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v4, p3, :cond_1e

    if-nez p4, :cond_27

    .line 476
    :cond_1e
    iget-object v4, v3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 477
    return v2

    .line 473
    .end local v3  # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 482
    .end local v1  # "i":I
    :cond_2a
    const/4 v1, 0x0

    return v1
.end method

.method checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 12
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "uri"  # Landroid/net/Uri;
    .param p4, "modeFlags"  # I
    .param p5, "userId"  # I

    .line 1192
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/4 v0, 0x0

    invoke-direct {v3, p5, p3, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    return v0
.end method

.method checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 24
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I
    .param p5, "lastTargetUid"  # I

    .line 1015
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    .line 1016
    return v1

    .line 1019
    :cond_12
    nop

    .line 1023
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1026
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1028
    return v1

    .line 1033
    :cond_26
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1034
    .local v14, "callingAppId":I
    const/16 v0, 0x3e8

    const-string v2, "UriGrantsManagerService"

    if-eq v14, v0, :cond_32

    if-nez v14, :cond_69

    .line 1035
    :cond_32
    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.settings.files"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1036
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.settings.module_licenses"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_69

    .line 1043
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; use startActivityAsCaller() instead"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v1

    .line 1049
    :cond_69
    :goto_69
    iget-object v0, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v15

    .line 1050
    .local v15, "authority":Ljava/lang/String;
    iget v0, v11, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v3, 0x10000000

    invoke-direct {v8, v15, v0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 1052
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v7, :cond_94

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content provider found for permission check: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1054
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v1

    .line 1058
    :cond_94
    move/from16 v2, p5

    .line 1059
    .local v2, "targetUid":I
    if-gez v2, :cond_a9

    if-eqz v10, :cond_a9

    .line 1061
    nop

    .line 1062
    :try_start_9b
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1061
    invoke-interface {v13, v10, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a3} :catch_a7

    .line 1063
    .end local v2  # "targetUid":I
    .local v0, "targetUid":I
    if-gez v0, :cond_a6

    .line 1065
    return v1

    .line 1069
    :cond_a6
    goto :goto_aa

    .line 1067
    .end local v0  # "targetUid":I
    .restart local v2  # "targetUid":I
    :catch_a7
    move-exception v0

    .line 1068
    .local v0, "ex":Landroid/os/RemoteException;
    return v1

    .line 1074
    .end local v0  # "ex":Landroid/os/RemoteException;
    :cond_a9
    move v0, v2

    .end local v2  # "targetUid":I
    .local v0, "targetUid":I
    :goto_aa
    and-int/lit8 v1, v12, 0x40

    if-nez v1, :cond_b7

    iget-boolean v1, v7, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v1, :cond_b3

    goto :goto_b7

    .line 1083
    :cond_b3
    const/4 v1, -0x1

    move/from16 v16, v1

    .local v1, "allowedResult":I
    goto :goto_ba

    .line 1079
    .end local v1  # "allowedResult":I
    :cond_b7
    :goto_b7
    move v1, v0

    move/from16 v16, v1

    .line 1086
    .local v16, "allowedResult":I
    :goto_ba
    if-ltz v0, :cond_cc

    .line 1088
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    move-object/from16 v4, p3

    move v5, v0

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 1092
    return v16

    .line 1096
    :cond_cc
    iget-boolean v1, v7, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1097
    .local v1, "allowed":Z
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_d7

    .line 1098
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v2, :cond_d7

    .line 1099
    const/4 v1, 0x0

    .line 1102
    :cond_d7
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_e0

    .line 1103
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v2, :cond_e0

    .line 1104
    const/4 v1, 0x0

    .line 1107
    :cond_e0
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v2, :cond_122

    .line 1108
    iget-object v2, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v2, v2

    .line 1109
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e8
    if-ge v3, v2, :cond_122

    .line 1110
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    if-eqz v4, :cond_11f

    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    iget-object v5, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1111
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 1112
    and-int/lit8 v4, v12, 0x1

    if-eqz v4, :cond_10f

    .line 1113
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10f

    .line 1114
    const/4 v1, 0x0

    .line 1117
    :cond_10f
    and-int/lit8 v4, v12, 0x2

    if-eqz v4, :cond_122

    .line 1118
    iget-object v4, v7, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_122

    .line 1119
    const/4 v1, 0x0

    goto :goto_122

    .line 1109
    :cond_11f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e8

    .line 1126
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_122
    :goto_122
    if-eqz v1, :cond_125

    .line 1127
    return v16

    .line 1137
    .end local v1  # "allowed":Z
    :cond_125
    if-ltz v0, :cond_148

    .line 1138
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, v11, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v1, v2, :cond_146

    const/16 v17, 0x0

    .line 1139
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v7

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move-object v10, v7

    .end local v7  # "pi":Landroid/content/pm/ProviderInfo;
    .local v10, "pi":Landroid/content/pm/ProviderInfo;
    move/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v1

    if-eqz v1, :cond_149

    const/4 v1, 0x1

    goto :goto_14a

    .line 1138
    .end local v10  # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v7  # "pi":Landroid/content/pm/ProviderInfo;
    :cond_146
    move-object v10, v7

    .end local v7  # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v10  # "pi":Landroid/content/pm/ProviderInfo;
    goto :goto_149

    .line 1137
    .end local v10  # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v7  # "pi":Landroid/content/pm/ProviderInfo;
    :cond_148
    move-object v10, v7

    .line 1139
    .end local v7  # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v10  # "pi":Landroid/content/pm/ProviderInfo;
    :cond_149
    :goto_149
    const/4 v1, 0x0

    :goto_14a
    move v7, v1

    .line 1143
    .local v7, "specialCrossUserGrant":Z
    if-nez v7, :cond_1d9

    .line 1144
    iget-boolean v1, v10, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    const-string v2, "/"

    const-string v3, "Provider "

    if-eqz v1, :cond_1ad

    .line 1150
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-eqz v1, :cond_1d9

    .line 1151
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v1, v1

    .line 1152
    .local v1, "N":I
    const/4 v4, 0x0

    .line 1153
    .local v4, "allowed":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15e
    if-ge v5, v1, :cond_181

    .line 1154
    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    if-eqz v6, :cond_17a

    iget-object v6, v10, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    move/from16 v17, v1

    .end local v1  # "N":I
    .local v17, "N":I
    iget-object v1, v11, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1155
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 1156
    const/4 v4, 0x1

    .line 1157
    goto :goto_183

    .line 1154
    .end local v17  # "N":I
    .restart local v1  # "N":I
    :cond_17a
    move/from16 v17, v1

    .line 1153
    .end local v1  # "N":I
    .restart local v17  # "N":I
    :cond_17c
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v17

    goto :goto_15e

    .end local v17  # "N":I
    .restart local v1  # "N":I
    :cond_181
    move/from16 v17, v1

    .line 1160
    .end local v1  # "N":I
    .end local v5  # "i":I
    .restart local v17  # "N":I
    :goto_183
    if-eqz v4, :cond_186

    goto :goto_1d9

    .line 1161
    :cond_186
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of permission to path of Uri "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1145
    .end local v4  # "allowed":Z
    .end local v17  # "N":I
    :cond_1ad
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1170
    :cond_1d9
    :goto_1d9
    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_238

    .line 1172
    invoke-virtual {v8, v11, v9, v12}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_238

    .line 1173
    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " does not have permission to "

    const-string v3, "UID "

    if-eqz v1, :cond_21d

    .line 1174
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_21d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1184
    :cond_238
    return v0
.end method

.method checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 26
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "mode"  # I
    .param p5, "needed"  # Lcom/android/server/uri/NeededUriGrants;
    .param p6, "targetUserId"  # I

    .line 543
    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v7, p5

    if-eqz v8, :cond_cf

    .line 547
    const/4 v1, 0x0

    if-nez p3, :cond_c

    .line 548
    return-object v1

    .line 550
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 551
    .local v10, "data":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v11

    .line 552
    .local v11, "clip":Landroid/content/ClipData;
    if-nez v10, :cond_19

    if-nez v11, :cond_19

    .line 553
    return-object v1

    .line 556
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v0

    .line 557
    .local v0, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_26

    .line 558
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v12, v0

    goto :goto_27

    .line 557
    :cond_26
    move v12, v0

    .line 560
    .end local v0  # "contentUserHint":I
    .local v12, "contentUserHint":I
    :goto_27
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 562
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v7, :cond_32

    .line 563
    iget v0, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v14, p6

    .local v0, "targetUid":I
    goto :goto_3e

    .line 566
    .end local v0  # "targetUid":I
    :cond_32
    const/high16 v0, 0x10000000

    move/from16 v14, p6

    :try_start_36
    invoke-interface {v13, v8, v0, v14}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3a} :catch_cb

    .line 569
    .restart local v0  # "targetUid":I
    nop

    .line 570
    if-gez v0, :cond_3e

    .line 573
    return-object v1

    .line 576
    :cond_3e
    :goto_3e
    if-eqz v10, :cond_61

    .line 577
    invoke-static {v12, v10}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v15

    .line 578
    .local v15, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v15

    move/from16 v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v0

    .line 579
    if-lez v0, :cond_61

    .line 580
    if-nez v7, :cond_5c

    .line 581
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v8, v0, v9}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .end local p5  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v1, "needed":Lcom/android/server/uri/NeededUriGrants;
    goto :goto_5d

    .line 580
    .end local v1  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local p5  # "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_5c
    move-object v1, v7

    .line 583
    .end local p5  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v1  # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_5d
    invoke-virtual {v1, v15}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    .line 586
    .end local v1  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v15  # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v7, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_61
    if-eqz v11, :cond_c9

    .line 587
    const/4 v1, 0x0

    move/from16 v16, v0

    move v0, v1

    move-object v15, v7

    .end local v7  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v0, "i":I
    .local v15, "needed":Lcom/android/server/uri/NeededUriGrants;
    .local v16, "targetUid":I
    :goto_68
    invoke-virtual {v11}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_c6

    .line 588
    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 589
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_9e

    .line 590
    invoke-static {v12, v7}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v6

    .line 591
    .local v6, "grantUri":Lcom/android/server/uri/GrantUri;
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v6

    move/from16 v5, p4

    move-object/from16 p5, v7

    move-object v7, v6

    .end local v6  # "grantUri":Lcom/android/server/uri/GrantUri;
    .local v7, "grantUri":Lcom/android/server/uri/GrantUri;
    .local p5, "uri":Landroid/net/Uri;
    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    .line 593
    .end local v16  # "targetUid":I
    .local v1, "targetUid":I
    if-lez v1, :cond_9b

    .line 594
    if-nez v15, :cond_98

    .line 595
    new-instance v2, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v2, v8, v1, v9}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    move-object v15, v2

    .line 597
    :cond_98
    invoke-virtual {v15, v7}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    .line 599
    .end local v7  # "grantUri":Lcom/android/server/uri/GrantUri;
    :cond_9b
    move/from16 v16, v1

    goto :goto_c3

    .line 600
    .end local v1  # "targetUid":I
    .end local p5  # "uri":Landroid/net/Uri;
    .local v7, "uri":Landroid/net/Uri;
    .restart local v16  # "targetUid":I
    :cond_9e
    move-object/from16 p5, v7

    .end local v7  # "uri":Landroid/net/Uri;
    .restart local p5  # "uri":Landroid/net/Uri;
    invoke-virtual {v11, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 601
    .local v17, "clipIntent":Landroid/content/Intent;
    if-eqz v17, :cond_c1

    .line 602
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    move/from16 v5, p4

    move-object v6, v15

    move-object/from16 v18, p5

    .end local p5  # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    .line 604
    .local v1, "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    if-eqz v1, :cond_c3

    .line 605
    move-object v15, v1

    goto :goto_c3

    .line 601
    .end local v1  # "newNeeded":Lcom/android/server/uri/NeededUriGrants;
    .end local v18  # "uri":Landroid/net/Uri;
    .restart local p5  # "uri":Landroid/net/Uri;
    :cond_c1
    move-object/from16 v18, p5

    .line 587
    .end local v17  # "clipIntent":Landroid/content/Intent;
    .end local p5  # "uri":Landroid/net/Uri;
    :cond_c3
    :goto_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    :cond_c6
    move/from16 v0, v16

    goto :goto_ca

    .line 586
    .end local v15  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .end local v16  # "targetUid":I
    .local v0, "targetUid":I
    .local v7, "needed":Lcom/android/server/uri/NeededUriGrants;
    :cond_c9
    move-object v15, v7

    .line 612
    .end local v7  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .restart local v15  # "needed":Lcom/android/server/uri/NeededUriGrants;
    :goto_ca
    return-object v15

    .line 567
    .end local v0  # "targetUid":I
    .end local v15  # "needed":Lcom/android/server/uri/NeededUriGrants;
    .local p5, "needed":Lcom/android/server/uri/NeededUriGrants;
    :catch_cb
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v1

    .line 544
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v10  # "data":Landroid/net/Uri;
    .end local v11  # "clip":Landroid/content/ClipData;
    .end local v12  # "contentUserHint":I
    .end local v13  # "pm":Landroid/content/pm/IPackageManager;
    :cond_cf
    move/from16 v14, p6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .registers 15
    .param p1, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"  # I
    .param p3, "modeFlags"  # I

    .line 1197
    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 1198
    .local v0, "persistable":Z
    :goto_9
    if-eqz v0, :cond_d

    const/4 v3, 0x3

    goto :goto_e

    .line 1199
    :cond_d
    move v3, v2

    :goto_e
    nop

    .line 1202
    .local v3, "minStrength":I
    if-nez p2, :cond_12

    .line 1203
    return v2

    .line 1206
    :cond_12
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1207
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v4, :cond_1d

    return v1

    .line 1210
    :cond_1d
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1211
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_2c

    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v6

    if-lt v6, v3, :cond_2c

    .line 1212
    return v2

    .line 1216
    :cond_2c
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1217
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_31
    if-ge v7, v6, :cond_55

    .line 1218
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1219
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v9, v9, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v9, :cond_52

    iget-object v9, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v10, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v10, v10, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1220
    invoke-virtual {v8, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v9

    if-lt v9, v3, :cond_52

    .line 1221
    return v2

    .line 1217
    .end local v8  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 1225
    .end local v7  # "i":I
    :cond_55
    return v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 348
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    const/4 v1, 0x1

    :try_start_d
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/GrantedUriPermission;>;"
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 276
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v2, :cond_4e

    .line 277
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 278
    .local v4, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 279
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 280
    .local v6, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_39

    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_39
    iget v7, v6, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v7, p2, :cond_48

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_48

    .line 283
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v6  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 276
    .end local v4  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v5  # "j":I
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 287
    .end local v2  # "size":I
    .end local v3  # "i":I
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_55

    .line 288
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 287
    :catchall_55
    move-exception v2

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v2
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "incoming"  # Z
    .param p3, "persistedOnly"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .line 216
    const-string v0, "getUriPermissions"

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 220
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 221
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 223
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/high16 v3, 0xc0000

    :try_start_19
    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_d3

    .line 225
    .local v3, "packageUid":I
    if-ne v3, v0, :cond_b4

    .line 231
    .end local v3  # "packageUid":I
    nop

    .line 233
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 234
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 235
    const/4 v3, 0x0

    if-eqz p2, :cond_71

    .line 236
    :try_start_2a
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 238
    .local v6, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v6, :cond_4b

    .line 239
    const-string v3, "UriGrantsManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No permission grants found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 241
    :cond_4b
    nop

    .local v3, "j":I
    :goto_4c
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v3, v7, :cond_70

    .line 242
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 243
    .local v7, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    if-eqz p3, :cond_66

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_6d

    .line 245
    :cond_66
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v7  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 249
    .end local v3  # "j":I
    .end local v6  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_70
    :goto_70
    goto :goto_aa

    .line 250
    :cond_71
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 251
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_78
    if-ge v7, v6, :cond_aa

    .line 252
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 254
    .local v8, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    move v9, v3

    .local v9, "j":I
    :goto_83
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_a7

    .line 255
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 256
    .local v10, "perm":Lcom/android/server/uri/UriPermission;
    iget-object v11, v10, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a4

    if-eqz p3, :cond_9d

    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v11, :cond_a4

    .line 258
    :cond_9d
    invoke-virtual {v10}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v10  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_83

    .line 251
    .end local v8  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    .end local v9  # "j":I
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .line 263
    .end local v6  # "size":I
    .end local v7  # "i":I
    :cond_aa
    :goto_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_2a .. :try_end_ab} :catchall_b1

    .line 264
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 263
    :catchall_b1
    move-exception v3

    :try_start_b2
    monitor-exit v5
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v3

    .line 226
    .end local v4  # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriPermission;>;"
    .local v3, "packageUid":I
    :cond_b4
    :try_start_b4
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not belong to calling UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "callingUserId":I
    .end local v2  # "pm":Landroid/content/pm/IPackageManager;
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "incoming":Z
    .end local p3  # "persistedOnly":Z
    throw v4
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_d3} :catch_d3

    .line 229
    .end local v3  # "packageUid":I
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingUserId":I
    .restart local v2  # "pm":Landroid/content/pm/IPackageManager;
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "incoming":Z
    .restart local p3  # "persistedOnly":Z
    :catch_d3
    move-exception v3

    .line 230
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Failed to verify package name ownership"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 15
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I
    .param p5, "owner"  # Lcom/android/server/uri/UriPermissionOwner;
    .param p6, "targetUserId"  # I

    .line 756
    if-eqz p2, :cond_25

    .line 760
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 762
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    const/high16 v1, 0x10000000

    :try_start_8
    invoke-interface {v0, p2, v1, p6}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v7
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_23

    .line 765
    .local v7, "targetUid":I
    nop

    .line 767
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v7

    .line 768
    if-gez v7, :cond_19

    .line 769
    return-void

    .line 772
    :cond_19
    move-object v1, p0

    move v2, v7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 773
    return-void

    .line 763
    .end local v7  # "targetUid":I
    :catch_23
    move-exception v1

    .line 764
    .local v1, "ex":Landroid/os/RemoteException;
    return-void

    .line 757
    .end local v0  # "pm":Landroid/content/pm/IPackageManager;
    .end local v1  # "ex":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V
    .registers 14
    .param p1, "callingUid"  # I
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "owner"  # Lcom/android/server/uri/UriPermissionOwner;
    .param p5, "targetUserId"  # I

    .line 617
    nop

    .line 618
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    const/4 v6, 0x0

    .line 617
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    .line 619
    .local v0, "needed":Lcom/android/server/uri/NeededUriGrants;
    if-nez v0, :cond_17

    .line 620
    return-void

    .line 623
    :cond_17
    invoke-virtual {p0, v0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 624
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 26
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "fromUid"  # I
    .param p3, "targetPkg"  # Ljava/lang/String;
    .param p4, "uri"  # Landroid/net/Uri;
    .param p5, "modeFlags"  # I
    .param p6, "sourceUserId"  # I
    .param p7, "targetUserId"  # I

    .line 186
    move-object/from16 v8, p0

    move-object/from16 v9, p4

    iget-object v10, v8, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 186
    const/4 v14, 0x0

    const/4 v15, 0x2

    const-string v16, "grantUriPermissionFromOwner"

    const/16 v17, 0x0

    move/from16 v13, p7

    invoke-virtual/range {v10 .. v17}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 189
    .end local p7  # "targetUserId":I
    .local v10, "targetUserId":I
    iget-object v11, v8, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 190
    :try_start_1d
    invoke-static/range {p1 .. p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_9d

    .line 191
    .local v0, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v0, :cond_7e

    .line 194
    :try_start_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_76

    move/from16 v12, p2

    if-eq v12, v1, :cond_43

    .line 195
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_36

    goto :goto_43

    .line 198
    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "nice try"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10  # "targetUserId":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "fromUid":I
    .end local p3  # "targetPkg":Ljava/lang/String;
    .end local p4  # "uri":Landroid/net/Uri;
    .end local p5  # "modeFlags":I
    .end local p6  # "sourceUserId":I
    throw v1
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_3f

    .line 210
    .end local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10  # "targetUserId":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "fromUid":I
    .restart local p3  # "targetPkg":Ljava/lang/String;
    .restart local p4  # "uri":Landroid/net/Uri;
    .restart local p5  # "modeFlags":I
    .restart local p6  # "sourceUserId":I
    :catchall_3f
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_a2

    .line 201
    .restart local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_43
    :goto_43
    if-eqz p3, :cond_6b

    .line 204
    if-eqz v9, :cond_60

    .line 208
    :try_start_47
    new-instance v4, Lcom/android/server/uri/GrantUri;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_5e

    const/4 v1, 0x0

    move/from16 v13, p6

    :try_start_4c
    invoke-direct {v4, v13, v9, v1}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p5

    move-object v6, v0

    move v7, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 210
    .end local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    monitor-exit v11

    .line 211
    return-void

    .line 210
    :catchall_5e
    move-exception v0

    goto :goto_79

    .line 205
    .restart local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_60
    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "targetUserId":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "fromUid":I
    .end local p3  # "targetPkg":Ljava/lang/String;
    .end local p4  # "uri":Landroid/net/Uri;
    .end local p5  # "modeFlags":I
    .end local p6  # "sourceUserId":I
    throw v1

    .line 202
    .restart local v10  # "targetUserId":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "fromUid":I
    .restart local p3  # "targetPkg":Ljava/lang/String;
    .restart local p4  # "uri":Landroid/net/Uri;
    .restart local p5  # "modeFlags":I
    .restart local p6  # "sourceUserId":I
    :cond_6b
    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null target"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "targetUserId":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "fromUid":I
    .end local p3  # "targetPkg":Ljava/lang/String;
    .end local p4  # "uri":Landroid/net/Uri;
    .end local p5  # "modeFlags":I
    .end local p6  # "sourceUserId":I
    throw v1

    .line 210
    .end local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10  # "targetUserId":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "fromUid":I
    .restart local p3  # "targetPkg":Ljava/lang/String;
    .restart local p4  # "uri":Landroid/net/Uri;
    .restart local p5  # "modeFlags":I
    .restart local p6  # "sourceUserId":I
    :catchall_76
    move-exception v0

    move/from16 v12, p2

    :goto_79
    move/from16 v13, p6

    :goto_7b
    move-object/from16 v3, p1

    goto :goto_a4

    .line 192
    .restart local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    :cond_7e
    move/from16 v12, p2

    move/from16 v13, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8e
    .catchall {:try_start_4c .. :try_end_8e} :catchall_9b

    move-object/from16 v3, p1

    :try_start_90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "targetUserId":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "fromUid":I
    .end local p3  # "targetPkg":Ljava/lang/String;
    .end local p4  # "uri":Landroid/net/Uri;
    .end local p5  # "modeFlags":I
    .end local p6  # "sourceUserId":I
    throw v1

    .line 210
    .end local v0  # "owner":Lcom/android/server/uri/UriPermissionOwner;
    .restart local v10  # "targetUserId":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "fromUid":I
    .restart local p3  # "targetPkg":Ljava/lang/String;
    .restart local p4  # "uri":Landroid/net/Uri;
    .restart local p5  # "modeFlags":I
    .restart local p6  # "sourceUserId":I
    :catchall_9b
    move-exception v0

    goto :goto_7b

    :catchall_9d
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v12, p2

    :goto_a2
    move/from16 v13, p6

    :goto_a4
    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_a6

    throw v0

    :catchall_a6
    move-exception v0

    goto :goto_a4
.end method

.method grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11
    .param p1, "needed"  # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"  # Lcom/android/server/uri/UriPermissionOwner;

    .line 744
    if-nez p1, :cond_3

    .line 745
    return-void

    .line 747
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/uri/NeededUriGrants;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 748
    invoke-virtual {p1, v0}, Lcom/android/server/uri/NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/GrantUri;

    .line 749
    .local v1, "grantUri":Lcom/android/server/uri/GrantUri;
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v5, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 747
    .end local v1  # "grantUri":Lcom/android/server/uri/GrantUri;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 752
    .end local v0  # "i":I
    :cond_1f
    return-void
.end method

.method onActivityManagerInternalAdded()V
    .registers 2

    .line 156
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 157
    return-void
.end method

.method readGrantedUriPermissions()V
    .registers 24

    .line 629
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 631
    .local v4, "now":J
    const/4 v6, 0x0

    .line 633
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_b
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v6, v0

    .line 634
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 635
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 638
    :goto_20
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v0, v9, :cond_12f

    .line 639
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 640
    .local v9, "tag":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v8, v0, :cond_121

    .line 641
    const-string/jumbo v0, "uri-grant"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 644
    const-string/jumbo v0, "userHandle"

    const/16 v10, -0x2710

    invoke-static {v7, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 646
    .local v11, "userHandle":I
    if-eq v11, v10, :cond_4a

    .line 648
    move v0, v11

    .line 649
    .local v0, "sourceUserId":I
    move v10, v11

    move v12, v10

    move v10, v0

    .local v10, "targetUserId":I
    goto :goto_5a

    .line 651
    .end local v0  # "sourceUserId":I
    .end local v10  # "targetUserId":I
    :cond_4a
    const-string/jumbo v0, "sourceUserId"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 652
    .restart local v0  # "sourceUserId":I
    const-string/jumbo v10, "targetUserId"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    move v12, v10

    move v10, v0

    .line 654
    .end local v0  # "sourceUserId":I
    .local v10, "sourceUserId":I
    .local v12, "targetUserId":I
    :goto_5a
    const-string/jumbo v0, "sourcePkg"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 655
    .local v14, "sourcePkg":Ljava/lang/String;
    const-string/jumbo v0, "targetPkg"

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 656
    .local v15, "targetPkg":Ljava/lang/String;
    const-string/jumbo v0, "uri"

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v13, v0

    .line 657
    .local v13, "uri":Landroid/net/Uri;
    const-string/jumbo v0, "prefix"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    move/from16 v16, v0

    .line 658
    .local v16, "prefix":Z
    const-string/jumbo v0, "modeFlags"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 659
    .local v17, "modeFlags":I
    const-string v0, "createdTime"

    invoke-static {v7, v0, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .line 664
    .local v20, "createdTime":J
    invoke-virtual {v13}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_95} :catch_14f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_95} :catch_142
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_95} :catch_13a
    .catchall {:try_start_b .. :try_end_95} :catchall_136

    move-wide/from16 v18, v4

    .end local v4  # "now":J
    .local v18, "now":J
    const/high16 v4, 0xc0000

    :try_start_99
    invoke-direct {v1, v0, v10, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    move-object v4, v0

    .line 666
    .local v4, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v4, :cond_e5

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a6
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_a6} :catch_118
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a6} :catch_116
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_a6} :catch_114
    .catchall {:try_start_99 .. :try_end_a6} :catchall_14a

    if-eqz v0, :cond_e5

    .line 667
    const/4 v5, -0x1

    .line 669
    .local v5, "targetUid":I
    :try_start_a9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ad} :catch_b9
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ad} :catch_118
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ad} :catch_116
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_ad} :catch_114
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_14a

    move/from16 v22, v5

    .end local v5  # "targetUid":I
    .local v22, "targetUid":I
    const/16 v5, 0x2000

    :try_start_b1
    invoke-interface {v0, v15, v5, v12}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b5} :catch_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_b1 .. :try_end_b5} :catch_118
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b5} :catch_116
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b1 .. :try_end_b5} :catch_114
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_14a

    move v5, v0

    .line 672
    .end local v22  # "targetUid":I
    .restart local v5  # "targetUid":I
    goto :goto_be

    .line 671
    .end local v5  # "targetUid":I
    .restart local v22  # "targetUid":I
    :catch_b7
    move-exception v0

    goto :goto_bc

    .end local v22  # "targetUid":I
    .restart local v5  # "targetUid":I
    :catch_b9
    move-exception v0

    move/from16 v22, v5

    .end local v5  # "targetUid":I
    .restart local v22  # "targetUid":I
    :goto_bc
    move/from16 v5, v22

    .line 673
    .end local v22  # "targetUid":I
    .restart local v5  # "targetUid":I
    :goto_be
    const/4 v0, -0x1

    if-eq v5, v0, :cond_da

    .line 674
    :try_start_c1
    new-instance v0, Lcom/android/server/uri/GrantUri;

    move-object/from16 v22, v7

    move/from16 v7, v16

    .end local v16  # "prefix":Z
    .local v7, "prefix":Z
    .local v22, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-direct {v0, v10, v13, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {v1, v14, v15, v5, v0}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 677
    .local v0, "perm":Lcom/android/server/uri/UriPermission;
    move/from16 v16, v8

    move/from16 v1, v17

    move/from16 v17, v7

    move-wide/from16 v7, v20

    .end local v8  # "type":I
    .end local v20  # "createdTime":J
    .local v1, "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    goto :goto_e4

    .line 673
    .end local v0  # "perm":Lcom/android/server/uri/UriPermission;
    .end local v1  # "modeFlags":I
    .end local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "type":I
    .local v16, "prefix":Z
    .local v17, "modeFlags":I
    .restart local v20  # "createdTime":J
    :cond_da
    move-object/from16 v22, v7

    move/from16 v1, v17

    move/from16 v17, v16

    move/from16 v16, v8

    move-wide/from16 v7, v20

    .line 679
    .end local v5  # "targetUid":I
    .end local v8  # "type":I
    .end local v20  # "createdTime":J
    .restart local v1  # "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    .restart local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    :goto_e4
    goto :goto_127

    .line 666
    .end local v1  # "modeFlags":I
    .end local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "type":I
    .local v16, "prefix":Z
    .local v17, "modeFlags":I
    .restart local v20  # "createdTime":J
    :cond_e5
    move-object/from16 v22, v7

    move/from16 v1, v17

    move/from16 v17, v16

    move/from16 v16, v8

    move-wide/from16 v7, v20

    .line 680
    .end local v8  # "type":I
    .end local v20  # "createdTime":J
    .restart local v1  # "modeFlags":I
    .local v7, "createdTime":J
    .local v16, "type":I
    .local v17, "prefix":Z
    .restart local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persisted grant for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " had source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but instead found "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/io/FileNotFoundException; {:try_start_c1 .. :try_end_113} :catch_118
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_113} :catch_116
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c1 .. :try_end_113} :catch_114
    .catchall {:try_start_c1 .. :try_end_113} :catchall_14a

    goto :goto_127

    .line 690
    .end local v1  # "modeFlags":I
    .end local v4  # "pi":Landroid/content/pm/ProviderInfo;
    .end local v7  # "createdTime":J
    .end local v9  # "tag":Ljava/lang/String;
    .end local v10  # "sourceUserId":I
    .end local v11  # "userHandle":I
    .end local v12  # "targetUserId":I
    .end local v13  # "uri":Landroid/net/Uri;
    .end local v14  # "sourcePkg":Ljava/lang/String;
    .end local v15  # "targetPkg":Ljava/lang/String;
    .end local v16  # "type":I
    .end local v17  # "prefix":Z
    .end local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catch_114
    move-exception v0

    goto :goto_13d

    .line 688
    :catch_116
    move-exception v0

    goto :goto_145

    .line 686
    :catch_118
    move-exception v0

    goto :goto_152

    .line 641
    .end local v18  # "now":J
    .local v4, "now":J
    .local v7, "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "type":I
    .restart local v9  # "tag":Ljava/lang/String;
    :cond_11a
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .end local v4  # "now":J
    .end local v7  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "type":I
    .restart local v16  # "type":I
    .restart local v18  # "now":J
    .restart local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_127

    .line 640
    .end local v16  # "type":I
    .end local v18  # "now":J
    .end local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4  # "now":J
    .restart local v7  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "type":I
    :cond_121
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .line 685
    .end local v4  # "now":J
    .end local v7  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "type":I
    .end local v9  # "tag":Ljava/lang/String;
    .restart local v16  # "type":I
    .restart local v18  # "now":J
    .restart local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    :goto_127
    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move-object/from16 v7, v22

    goto/16 :goto_20

    .line 638
    .end local v16  # "type":I
    .end local v18  # "now":J
    .end local v22  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4  # "now":J
    .restart local v7  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8  # "type":I
    :cond_12f
    move-wide/from16 v18, v4

    move-object/from16 v22, v7

    move/from16 v16, v8

    .end local v4  # "now":J
    .end local v7  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8  # "type":I
    .restart local v18  # "now":J
    goto :goto_152

    .line 693
    .end local v18  # "now":J
    .restart local v4  # "now":J
    :catchall_136
    move-exception v0

    move-wide/from16 v18, v4

    .end local v4  # "now":J
    .restart local v18  # "now":J
    goto :goto_14b

    .line 690
    .end local v18  # "now":J
    .restart local v4  # "now":J
    :catch_13a
    move-exception v0

    move-wide/from16 v18, v4

    .line 691
    .end local v4  # "now":J
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v18  # "now":J
    :goto_13d
    :try_start_13d
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    nop

    .end local v0  # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_153

    .line 688
    .end local v18  # "now":J
    .restart local v4  # "now":J
    :catch_142
    move-exception v0

    move-wide/from16 v18, v4

    .line 689
    .end local v4  # "now":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v18  # "now":J
    :goto_145
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_148
    .catchall {:try_start_13d .. :try_end_148} :catchall_14a

    .line 693
    nop

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_153

    :catchall_14a
    move-exception v0

    :goto_14b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 686
    .end local v18  # "now":J
    .restart local v4  # "now":J
    :catch_14f
    move-exception v0

    move-wide/from16 v18, v4

    .line 693
    .end local v4  # "now":J
    .restart local v18  # "now":J
    :goto_152
    nop

    :goto_153
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    nop

    .line 695
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 13
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "modeFlags"  # I
    .param p3, "toPackage"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 366
    const/4 v0, 0x0

    if-eqz p3, :cond_16

    .line 367
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "releasePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->getPmInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_20

    .line 371
    .end local v1  # "uid":I
    :cond_16
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 375
    .restart local v1  # "uid":I
    :goto_20
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 378
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 379
    const/4 v3, 0x0

    .line 381
    .local v3, "persistChanged":Z
    :try_start_28
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 383
    .local v0, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/4 v5, 0x1

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v4

    .line 385
    .local v4, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-nez v0, :cond_65

    if-nez v4, :cond_65

    if-eqz p3, :cond_42

    goto :goto_65

    .line 386
    :cond_42
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No permission grants found for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and Uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1  # "uid":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "modeFlags":I
    .end local p3  # "toPackage":Ljava/lang/String;
    .end local p4  # "userId":I
    throw v5

    .line 390
    .restart local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "modeFlags":I
    .restart local p3  # "toPackage":Ljava/lang/String;
    .restart local p4  # "userId":I
    :cond_65
    :goto_65
    if-eqz v0, :cond_6f

    .line 391
    invoke-virtual {v0, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 392
    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 394
    :cond_6f
    if-eqz v4, :cond_79

    .line 395
    invoke-virtual {v4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 396
    invoke-direct {p0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 399
    :cond_79
    if-eqz v3, :cond_7e

    .line 400
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 402
    .end local v0  # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v3  # "persistChanged":Z
    .end local v4  # "prefixPerm":Lcom/android/server/uri/UriPermission;
    :cond_7e
    monitor-exit v2

    .line 403
    return-void

    .line 402
    :catchall_80
    move-exception v0

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_28 .. :try_end_82} :catchall_80

    throw v0
.end method

.method removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userHandle"  # I
    .param p3, "persistable"  # Z
    .param p4, "targetOnly"  # Z

    .line 419
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 420
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must narrow by either package or user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_e
    :goto_e
    const/4 v1, 0x0

    .line 425
    .local v1, "persistChanged":Z
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 426
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_8e

    .line 427
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 428
    .local v4, "targetUid":I
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 431
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    const/4 v6, 0x1

    if-eq p2, v0, :cond_2f

    .line 432
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8c

    .line 433
    :cond_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 434
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 437
    .local v8, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz p1, :cond_57

    if-nez p4, :cond_4f

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_4f
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 438
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 442
    :cond_57
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-nez p3, :cond_6a

    .line 443
    goto :goto_37

    .line 445
    :cond_6a
    if-eqz p3, :cond_6e

    .line 446
    move v9, v0

    goto :goto_70

    :cond_6e
    const/16 v9, -0x41

    .line 445
    :goto_70
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v1, v9

    .line 450
    iget v9, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v9, :cond_7c

    .line 451
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 454
    .end local v8  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_7c
    goto :goto_37

    .line 456
    .end local v7  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/uri/UriPermission;>;"
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 457
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    add-int/lit8 v2, v2, -0x1

    .line 459
    add-int/lit8 v3, v3, -0x1

    .line 426
    .end local v4  # "targetUid":I
    .end local v5  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_8c
    add-int/2addr v3, v6

    goto :goto_16

    .line 464
    .end local v3  # "i":I
    :cond_8e
    if-eqz v1, :cond_93

    .line 465
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 467
    :cond_93
    return-void
.end method

.method revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 21
    .param p1, "targetPackage"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "grantUri"  # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"  # I

    .line 779
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 780
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    iget-object v0, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 781
    .local v11, "authority":Ljava/lang/String;
    iget v0, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v1, 0xc0000

    invoke-direct {v6, v11, v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 783
    .local v12, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v12, :cond_37

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No content provider found for permission revoke: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    const-string v1, "UriGrantsManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 790
    :cond_37
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v12

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a2

    .line 793
    iget-object v0, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 794
    .local v0, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-eqz v0, :cond_a1

    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, "persistChanged":Z
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_59
    if-ltz v4, :cond_91

    .line 797
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 798
    .local v2, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_6c

    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    .line 799
    goto :goto_8e

    .line 801
    :cond_6c
    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v13, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v13, :cond_8e

    iget-object v5, v2, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v13, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 802
    invoke-virtual {v5, v13}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 805
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v2, v5, v1}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v3, v5

    .line 807
    iget v5, v2, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_8e

    .line 808
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 796
    .end local v2  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, -0x1

    goto :goto_59

    .line 812
    .end local v4  # "i":I
    :cond_91
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 813
    iget-object v1, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 815
    :cond_9c
    if-eqz v3, :cond_a1

    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 819
    .end local v3  # "persistChanged":Z
    :cond_a1
    return-void

    .line 822
    .end local v0  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_a2
    const/4 v0, 0x0

    .line 825
    .local v0, "persistChanged":Z
    iget-object v3, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_aa
    if-ltz v3, :cond_10c

    .line 826
    iget-object v4, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 827
    .local v4, "targetUid":I
    iget-object v5, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 829
    .local v5, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v2

    .local v13, "j":I
    :goto_bf
    if-ltz v13, :cond_fd

    .line 830
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/uri/UriPermission;

    .line 831
    .local v14, "perm":Lcom/android/server/uri/UriPermission;
    if-eqz v7, :cond_d2

    iget-object v15, v14, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    .line 832
    goto :goto_f9

    .line 834
    :cond_d2
    iget-object v15, v14, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v15, v15, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v1, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v15, v1, :cond_f9

    iget-object v1, v14, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v1, v1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v15, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 835
    invoke-virtual {v1, v15}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 838
    or-int/lit8 v1, p4, 0x40

    if-nez v7, :cond_ec

    move v15, v2

    goto :goto_ed

    :cond_ec
    const/4 v15, 0x0

    :goto_ed
    invoke-virtual {v14, v1, v15}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 841
    iget v1, v14, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v1, :cond_f9

    .line 842
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 829
    .end local v14  # "perm":Lcom/android/server/uri/UriPermission;
    :cond_f9
    :goto_f9
    add-int/lit8 v13, v13, -0x1

    const/4 v1, 0x0

    goto :goto_bf

    .line 847
    .end local v13  # "j":I
    :cond_fd
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 848
    iget-object v1, v6, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 825
    .end local v4  # "targetUid":I
    .end local v5  # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_108
    add-int/lit8 v3, v3, -0x1

    const/4 v1, 0x0

    goto :goto_aa

    .line 852
    .end local v3  # "i":I
    :cond_10c
    if-eqz v0, :cond_111

    .line 853
    invoke-direct/range {p0 .. p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 855
    :cond_111
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "modeFlags"  # I
    .param p3, "toPackage"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 301
    const/4 v0, 0x0

    if-eqz p3, :cond_16

    .line 302
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v3, "takePersistableUriPermission"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->getPmInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p3, v0, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .local v1, "uid":I
    goto :goto_20

    .line 306
    .end local v1  # "uid":I
    :cond_16
    const-string/jumbo v1, "takePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 310
    .restart local v1  # "uid":I
    :goto_20
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 313
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "persistChanged":Z
    :try_start_28
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 317
    .local v4, "grantUri":Lcom/android/server/uri/GrantUri;
    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 318
    .local v5, "exactPerm":Lcom/android/server/uri/UriPermission;
    new-instance v6, Lcom/android/server/uri/GrantUri;

    const/4 v7, 0x1

    invoke-direct {v6, p4, p1, v7}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v6}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v6

    .line 321
    .local v6, "prefixPerm":Lcom/android/server/uri/UriPermission;
    if-eqz v5, :cond_44

    iget v8, v5, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v8, p2

    if-ne v8, p2, :cond_44

    move v8, v7

    goto :goto_45

    :cond_44
    move v8, v0

    .line 323
    .local v8, "exactValid":Z
    :goto_45
    if-eqz v6, :cond_4d

    iget v9, v6, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v9, p2

    if-ne v9, p2, :cond_4d

    move v0, v7

    .line 326
    .local v0, "prefixValid":Z
    :cond_4d
    if-nez v8, :cond_75

    if-eqz v0, :cond_52

    goto :goto_75

    .line 327
    :cond_52
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No persistable permission grants found for UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and Uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v4}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1  # "uid":I
    .end local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "modeFlags":I
    .end local p3  # "toPackage":Ljava/lang/String;
    .end local p4  # "userId":I
    throw v7

    .line 331
    .restart local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/uri/UriGrantsManagerService;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "modeFlags":I
    .restart local p3  # "toPackage":Ljava/lang/String;
    .restart local p4  # "userId":I
    :cond_75
    :goto_75
    if-eqz v8, :cond_7c

    .line 332
    invoke-virtual {v5, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 334
    :cond_7c
    if-eqz v0, :cond_83

    .line 335
    invoke-virtual {v6, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 338
    :cond_83
    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrants(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 340
    if-eqz v3, :cond_8d

    .line 341
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 343
    .end local v0  # "prefixValid":Z
    .end local v3  # "persistChanged":Z
    .end local v4  # "grantUri":Lcom/android/server/uri/GrantUri;
    .end local v5  # "exactPerm":Lcom/android/server/uri/UriPermission;
    .end local v6  # "prefixPerm":Lcom/android/server/uri/UriPermission;
    .end local v8  # "exactValid":Z
    :cond_8d
    monitor-exit v2

    .line 344
    return-void

    .line 343
    :catchall_8f
    move-exception v0

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_28 .. :try_end_91} :catchall_8f

    throw v0
.end method
