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
    .registers 5

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
    new-instance p1, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 147
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object p1

    .line 148
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "uri-grants"

    invoke-direct {v0, v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .registers 3

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    .line 108
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/content/Context;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 13

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
    const/4 p1, 0x0

    return p1

    .line 871
    :cond_14
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p1

    return p1
.end method

.method private checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 15

    .line 876
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    if-ne v0, p4, :cond_8

    .line 877
    return v1

    .line 878
    :cond_8
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 879
    return v2

    .line 882
    :cond_e
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 883
    :goto_15
    and-int/lit8 p5, p5, 0x2

    if-nez p5, :cond_1b

    move p5, v1

    goto :goto_1c

    :cond_1b
    move p5, v2

    .line 886
    :goto_1c
    if-nez v0, :cond_31

    :try_start_1e
    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_31

    if-eqz p6, :cond_31

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 887
    invoke-interface {p1, v3, p4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_31

    .line 888
    move v0, v1

    goto :goto_31

    .line 948
    :catch_2e
    move-exception p1

    goto/16 :goto_a0

    .line 890
    :cond_31
    :goto_31
    if-nez p5, :cond_42

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v3, :cond_42

    if-eqz p6, :cond_42

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 891
    invoke-interface {p1, v3, p4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_42

    .line 892
    move p5, v1

    .line 897
    :cond_42
    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v3, :cond_48

    move v3, v1

    goto :goto_49

    :cond_48
    move v3, v2

    .line 898
    :goto_49
    iget-object v4, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v4, :cond_4f

    move v4, v1

    goto :goto_50

    :cond_4f
    move v4, v2

    .line 901
    :goto_50
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 902
    if-eqz p2, :cond_92

    .line 903
    iget-object p3, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    .line 904
    array-length v5, p2

    .line 905
    :goto_5b
    if-lez v5, :cond_92

    if-eqz v0, :cond_61

    if-nez p5, :cond_92

    .line 906
    :cond_61
    add-int/lit8 v5, v5, -0x1

    .line 907
    aget-object v6, p2, v5

    .line 908
    invoke-virtual {v6, p3}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 909
    if-nez v0, :cond_7e

    .line 910
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    .line 915
    if-eqz v7, :cond_7e

    .line 916
    if-eqz p6, :cond_7d

    invoke-interface {p1, v7, p4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_7d

    .line 918
    move v0, v1

    goto :goto_7e

    .line 920
    :cond_7d
    move v3, v2

    .line 924
    :cond_7e
    :goto_7e
    if-nez p5, :cond_91

    .line 925
    invoke-virtual {v6}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 930
    if-eqz v6, :cond_91

    .line 931
    if-eqz p6, :cond_90

    invoke-interface {p1, v6, p4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_8c} :catch_2e

    if-nez v6, :cond_90

    .line 933
    move p5, v1

    goto :goto_91

    .line 935
    :cond_90
    move v4, v2

    .line 940
    :cond_91
    :goto_91
    goto :goto_5b

    .line 945
    :cond_92
    if-eqz v3, :cond_95

    move v0, v1

    .line 946
    :cond_95
    if-eqz v4, :cond_98

    move p5, v1

    .line 950
    :cond_98
    nop

    .line 952
    if-eqz v0, :cond_9e

    if-eqz p5, :cond_9e

    goto :goto_9f

    :cond_9e
    move v1, v2

    :goto_9f
    return v1

    .line 949
    :goto_a0
    return v2
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5

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

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 7

    .line 699
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 700
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
    if-nez v1, :cond_23

    .line 707
    new-instance v1, Lcom/android/server/uri/UriPermission;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 708
    invoke-virtual {v0, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_23
    return-object v1
.end method

.method private findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 4

    .line 973
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 974
    if-eqz p1, :cond_11

    .line 975
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriPermission;

    return-object p1

    .line 977
    :cond_11
    const/4 p1, 0x0

    return-object p1
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
    .registers 5

    .line 994
    nop

    .line 996
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    or-int/lit16 p3, p3, 0x800

    invoke-interface {v0, p1, p3, p2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1000
    goto :goto_e

    .line 999
    :catch_c
    move-exception p1

    const/4 p1, 0x0

    .line 1001
    :goto_e
    return-object p1
.end method

.method private grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 9

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
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 729
    if-nez v0, :cond_32

    .line 730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for grant: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UriGrantsManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_32
    and-int/lit16 v1, p4, 0x80

    if-eqz v1, :cond_39

    .line 735
    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 737
    :cond_39
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p1

    .line 739
    invoke-virtual {p1, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)V

    .line 740
    return-void
.end method

.method private matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 7

    .line 487
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    .line 488
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 489
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 490
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 492
    :cond_14
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 493
    array-length v0, p2

    .line 494
    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    if-ge v2, v0, :cond_2c

    .line 495
    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 p1, 0x1

    return p1

    .line 494
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 497
    :cond_2c
    return v1
.end method

.method private maybePrunePersistedUriGrants(I)Z
    .registers 7

    .line 507
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 508
    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 509
    :cond_c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_15

    return v0

    .line 511
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 513
    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_34

    .line 514
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_34
    goto :goto_21

    .line 518
    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    .line 519
    if-gtz p1, :cond_3d

    return v0

    .line 521
    :cond_3d
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 522
    nop

    :goto_46
    if-ge v0, p1, :cond_58

    .line 523
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    .line 527
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 528
    invoke-direct {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 531
    :cond_58
    const/4 p1, 0x1

    return p1
.end method

.method private removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .registers 4

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
    if-nez v0, :cond_12

    .line 962
    return-void

    .line 966
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 968
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

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
    .registers 9

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1234
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1235
    monitor-enter p0

    .line 1236
    :try_start_9
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1237
    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_3d

    .line 1238
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1239
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 1240
    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_39

    .line 1241
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_39
    goto :goto_22

    .line 1237
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1245
    :cond_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_e2

    .line 1247
    nop

    .line 1249
    const/4 v3, 0x0

    :try_start_40
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_d8

    .line 1251
    :try_start_46
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1252
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1253
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1254
    const-string/jumbo v4, "uri-grants"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 1256
    const-string/jumbo v5, "uri-grant"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    const-string/jumbo v5, "sourceUserId"

    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1258
    const-string/jumbo v5, "targetUserId"

    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1259
    const-string/jumbo v5, "sourcePkg"

    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    const-string/jumbo v5, "targetPkg"

    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1261
    const-string/jumbo v5, "uri"

    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const-string/jumbo v5, "prefix"

    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v6, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 1263
    const-string v5, "modeFlags"

    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 1264
    const-string v5, "createdTime"

    iget-wide v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-static {v1, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 1265
    const-string/jumbo v4, "uri-grant"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1266
    goto :goto_66

    .line 1267
    :cond_c7
    const-string/jumbo v2, "uri-grants"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1270
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_d5} :catch_d6

    .line 1275
    goto :goto_e1

    .line 1271
    :catch_d6
    move-exception v1

    goto :goto_da

    :catch_d8
    move-exception v0

    move-object v0, v3

    .line 1272
    :goto_da
    if-eqz v0, :cond_e1

    .line 1273
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1276
    :cond_e1
    :goto_e1
    return-void

    .line 1245
    :catchall_e2
    move-exception v0

    :try_start_e3
    monitor-exit p0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v0
.end method


# virtual methods
.method checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 9

    .line 471
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 472
    if-eqz p1, :cond_2a

    .line 473
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_2a

    .line 474
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    .line 475
    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_1e

    if-nez p4, :cond_27

    .line 476
    :cond_1e
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-direct {p0, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 477
    return v1

    .line 473
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 482
    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 12

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

    move-result p1

    return p1
.end method

.method checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 16

    .line 1015
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 1016
    return v1

    .line 1019
    :cond_8
    nop

    .line 1023
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1026
    iget-object v2, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1028
    return v1

    .line 1033
    :cond_1c
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1034
    const/16 v3, 0x3e8

    const-string v4, "UriGrantsManagerService"

    if-eq v2, v3, :cond_28

    if-nez v2, :cond_5f

    .line 1035
    :cond_28
    iget-object v2, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.files"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1036
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.module_licenses"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_5f

    .line 1043
    :cond_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; use startActivityAsCaller() instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    return v1

    .line 1049
    :cond_5f
    :goto_5f
    iget-object v2, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 1050
    iget v3, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v5, 0x10000000

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    .line 1052
    if-nez v9, :cond_8a

    .line 1053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for permission check: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1054
    invoke-virtual {p2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1053
    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return v1

    .line 1058
    :cond_8a
    nop

    .line 1059
    if-gez p5, :cond_9e

    if-eqz p2, :cond_9e

    .line 1061
    nop

    .line 1062
    :try_start_90
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p5

    .line 1061
    invoke-interface {v0, p2, v5, p5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p5
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_98} :catch_9c

    .line 1063
    if-gez p5, :cond_9b

    .line 1065
    return v1

    .line 1069
    :cond_9b
    goto :goto_9e

    .line 1067
    :catch_9c
    move-exception p1

    .line 1068
    return v1

    .line 1074
    :cond_9e
    :goto_9e
    and-int/lit8 p2, p4, 0x40

    if-nez p2, :cond_a8

    iget-boolean p2, v9, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz p2, :cond_a7

    goto :goto_a8

    .line 1083
    :cond_a7
    goto :goto_a9

    .line 1079
    :cond_a8
    :goto_a8
    move v1, p5

    .line 1086
    :goto_a9
    const/4 p2, 0x0

    if-ltz p5, :cond_b9

    .line 1088
    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v5, p3

    move v6, p5

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 1092
    return v1

    .line 1096
    :cond_b9
    iget-boolean v2, v9, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 1097
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_c4

    .line 1098
    iget-object v4, v9, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v4, :cond_c4

    .line 1099
    move v2, p2

    .line 1102
    :cond_c4
    and-int/lit8 v4, p4, 0x2

    if-eqz v4, :cond_cd

    .line 1103
    iget-object v5, v9, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v5, :cond_cd

    .line 1104
    move v2, p2

    .line 1107
    :cond_cd
    iget-object v5, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v5, :cond_10b

    .line 1108
    iget-object v5, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v5, v5

    .line 1109
    move v6, p2

    :goto_d5
    if-ge v6, v5, :cond_10b

    .line 1110
    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v7, v7, v6

    if-eqz v7, :cond_108

    iget-object v7, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v7, v7, v6

    iget-object v8, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1111
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_108

    .line 1112
    if-eqz v3, :cond_fa

    .line 1113
    iget-object v3, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_fa

    .line 1114
    move v2, p2

    .line 1117
    :cond_fa
    if-eqz v4, :cond_10b

    .line 1118
    iget-object v3, v9, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10b

    .line 1119
    move v2, p2

    goto :goto_10b

    .line 1109
    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_d5

    .line 1126
    :cond_10b
    :goto_10b
    if-eqz v2, :cond_10e

    .line 1127
    return v1

    .line 1137
    :cond_10e
    const/4 v1, 0x1

    if-ltz p5, :cond_128

    .line 1138
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v3, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v2, v3, :cond_128

    const/4 v8, 0x0

    .line 1139
    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v5, p3

    move v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternal(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v2

    if-eqz v2, :cond_128

    move v2, v1

    goto :goto_129

    :cond_128
    move v2, p2

    .line 1143
    :goto_129
    if-nez v2, :cond_1b0

    .line 1144
    iget-boolean v2, v9, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    const-string v3, "/"

    const-string v4, "Provider "

    if-eqz v2, :cond_184

    .line 1150
    iget-object v2, v9, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-eqz v2, :cond_1b0

    .line 1151
    iget-object v2, v9, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    .line 1152
    nop

    .line 1153
    move v5, p2

    :goto_13c
    if-ge v5, v2, :cond_15a

    .line 1154
    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    if-eqz v6, :cond_157

    iget-object v6, v9, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v6, v6, v5

    iget-object v7, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1155
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_157

    .line 1156
    nop

    .line 1157
    move p2, v1

    goto :goto_15a

    .line 1153
    :cond_157
    add-int/lit8 v5, v5, 0x1

    goto :goto_13c

    .line 1160
    :cond_15a
    :goto_15a
    if-eqz p2, :cond_15d

    goto :goto_1b0

    .line 1161
    :cond_15d
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " does not allow granting of permission to path of Uri "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1145
    :cond_184
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " does not allow granting of Uri permissions (uri "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :cond_1b0
    :goto_1b0
    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move-object v5, p3

    move v6, p1

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result p2

    if-nez p2, :cond_20b

    .line 1172
    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z

    move-result p2

    if-nez p2, :cond_20b

    .line 1173
    iget-object p2, v9, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string p4, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p4, " does not have permission to "

    const-string p5, "UID "

    if-eqz p2, :cond_1f0

    .line 1174
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1179
    :cond_1f0
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1184
    :cond_20b
    return p5
.end method

.method checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 22

    .line 543
    move-object/from16 v0, p2

    move/from16 v8, p4

    move-object/from16 v7, p5

    if-eqz v0, :cond_b7

    .line 547
    const/4 v1, 0x0

    if-nez p3, :cond_c

    .line 548
    return-object v1

    .line 550
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    .line 552
    if-nez v2, :cond_19

    if-nez v9, :cond_19

    .line 553
    return-object v1

    .line 556
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v3

    .line 557
    const/4 v4, -0x2

    if-ne v3, v4, :cond_26

    .line 558
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    move v10, v3

    goto :goto_27

    .line 557
    :cond_26
    move v10, v3

    .line 560
    :goto_27
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 562
    if-eqz v7, :cond_33

    .line 563
    iget v1, v7, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move/from16 v11, p6

    move v6, v1

    goto :goto_40

    .line 566
    :cond_33
    const/high16 v4, 0x10000000

    move/from16 v11, p6

    :try_start_37
    invoke-interface {v3, v0, v4, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3b} :catch_b5

    .line 569
    nop

    .line 570
    if-gez v3, :cond_3f

    .line 573
    return-object v1

    .line 570
    :cond_3f
    move v6, v3

    .line 576
    :goto_40
    if-eqz v2, :cond_61

    .line 577
    invoke-static {v10, v2}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v12

    .line 578
    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v6

    .line 579
    if-lez v6, :cond_61

    .line 580
    if-nez v7, :cond_5c

    .line 581
    new-instance v1, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v1, v0, v6, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    goto :goto_5d

    .line 580
    :cond_5c
    move-object v1, v7

    .line 583
    :goto_5d
    invoke-virtual {v1, v12}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    move-object v7, v1

    .line 586
    :cond_61
    if-eqz v9, :cond_b3

    .line 587
    const/4 v1, 0x0

    move v12, v1

    move v14, v6

    move-object v13, v7

    :goto_67
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v12, v1, :cond_b4

    .line 588
    invoke-virtual {v9, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_95

    .line 590
    invoke-static {v10, v1}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;)Lcom/android/server/uri/GrantUri;

    move-result-object v7

    .line 591
    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move/from16 v5, p4

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v14

    .line 593
    if-lez v14, :cond_94

    .line 594
    if-nez v13, :cond_91

    .line 595
    new-instance v13, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v13, v0, v14, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .line 597
    :cond_91
    invoke-virtual {v13, v7}, Lcom/android/server/uri/NeededUriGrants;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_94
    goto :goto_b0

    .line 600
    :cond_95
    invoke-virtual {v9, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 601
    if-eqz v4, :cond_b0

    .line 602
    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v13

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_b0

    .line 605
    move-object v13, v1

    .line 587
    :cond_b0
    :goto_b0
    add-int/lit8 v12, v12, 0x1

    goto :goto_67

    .line 586
    :cond_b3
    move-object v13, v7

    .line 612
    :cond_b4
    return-object v13

    .line 567
    :catch_b5
    move-exception v0

    .line 568
    return-object v1

    .line 544
    :cond_b7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .registers 12

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
    :goto_9
    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    .line 1199
    :cond_d
    move v0, v2

    .line 1202
    :goto_e
    if-nez p2, :cond_11

    .line 1203
    return v2

    .line 1206
    :cond_11
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 1207
    if-nez p2, :cond_1c

    return v1

    .line 1210
    :cond_1c
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 1211
    if-eqz v3, :cond_2b

    invoke-virtual {v3, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v3

    if-lt v3, v0, :cond_2b

    .line 1212
    return v2

    .line 1216
    :cond_2b
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1217
    move v4, v1

    :goto_30
    if-ge v4, v3, :cond_54

    .line 1218
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 1219
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v6, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v6, :cond_51

    iget-object v6, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v7, v7, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1220
    invoke-virtual {v5, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v5

    if-lt v5, v0, :cond_51

    .line 1221
    return v2

    .line 1217
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1225
    :cond_54
    return v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6

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
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
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
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 276
    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_4f

    .line 277
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 278
    move v6, v3

    :goto_24
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_4c

    .line 279
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    .line 280
    if-eqz p1, :cond_3a

    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    :cond_3a
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_49

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_49

    .line 283
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 276
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 287
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_11 .. :try_end_50} :catchall_56

    .line 288
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 287
    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 12
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
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 221
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 223
    const/high16 v3, 0xc0000

    :try_start_19
    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1d} :catch_d3

    .line 225
    if-ne v1, v0, :cond_b4

    .line 231
    nop

    .line 233
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    const/4 v3, 0x0

    if-eqz p2, :cond_71

    .line 236
    :try_start_2a
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 238
    if-nez p2, :cond_4b

    .line 239
    const-string p2, "UriGrantsManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No permission grants found for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 241
    :cond_4b
    nop

    :goto_4c
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v3, v0, :cond_70

    .line 242
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriPermission;

    .line 243
    iget-object v4, v0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    if-eqz p3, :cond_66

    iget v4, v0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_6d

    .line 245
    :cond_66
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 249
    :cond_70
    :goto_70
    goto :goto_aa

    .line 250
    :cond_71
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    .line 251
    move v0, v3

    :goto_78
    if-ge v0, p2, :cond_aa

    .line 252
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 253
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 254
    move v5, v3

    :goto_83
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7

    .line 255
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 256
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    if-eqz p3, :cond_9d

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_a4

    .line 258
    :cond_9d
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_a4
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 251
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 263
    :cond_aa
    :goto_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_2a .. :try_end_ab} :catchall_b1

    .line 264
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 263
    :catchall_b1
    move-exception p1

    :try_start_b2
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p1

    .line 226
    :cond_b4
    :try_start_b4
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling UID "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_d3} :catch_d3

    .line 229
    :catch_d3
    move-exception p1

    .line 230
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Failed to verify package name ownership"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 15

    .line 756
    if-eqz p2, :cond_24

    .line 760
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 762
    const/high16 v1, 0x10000000

    :try_start_8
    invoke-interface {v0, p2, v1, p6}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v7
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_22

    .line 765
    nop

    .line 767
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    .line 768
    if-gez v1, :cond_19

    .line 769
    return-void

    .line 772
    :cond_19
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 773
    return-void

    .line 763
    :catch_22
    move-exception p1

    .line 764
    return-void

    .line 757
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "targetPkg"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V
    .registers 14

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

    move-result-object p1

    .line 619
    if-nez p1, :cond_17

    .line 620
    return-void

    .line 623
    :cond_17
    invoke-virtual {p0, p1, p4}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 624
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 18

    .line 186
    move-object v0, p0

    move-object v1, p4

    iget-object v2, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 186
    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "grantUriPermissionFromOwner"

    const/4 v9, 0x0

    move/from16 v5, p7

    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 189
    iget-object v8, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 190
    :try_start_1a
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v6

    .line 191
    if-eqz v6, :cond_62

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move v3, p2

    if-eq v3, v2, :cond_3b

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v2, v4, :cond_32

    goto :goto_3b

    .line 198
    :cond_32
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "nice try"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3b
    :goto_3b
    if-eqz p3, :cond_59

    .line 204
    if-eqz v1, :cond_50

    .line 208
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/4 v2, 0x0

    move/from16 v5, p6

    invoke-direct {v4, v5, p4, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermission(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    .line 210
    monitor-exit v8

    .line 211
    return-void

    .line 205
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catchall_7a
    move-exception v0

    monitor-exit v8
    :try_end_7c
    .catchall {:try_start_1a .. :try_end_7c} :catchall_7a

    throw v0
.end method

.method grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11

    .line 744
    if-nez p1, :cond_3

    .line 745
    return-void

    .line 747
    :cond_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/android/server/uri/NeededUriGrants;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 748
    invoke-virtual {p1, v0}, Lcom/android/server/uri/NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/uri/GrantUri;

    .line 749
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 752
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
    .registers 21

    .line 629
    move-object/from16 v1, p0

    const-string v2, "Failed reading Uri grants"

    const-string v3, "UriGrantsManagerService"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 631
    nop

    .line 633
    const/4 v6, 0x0

    :try_start_c
    iget-object v0, v1, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_12} :catch_127
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_12} :catch_111
    .catchall {:try_start_c .. :try_end_12} :catchall_10d

    .line 634
    :try_start_12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 635
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 638
    :goto_1f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_f6

    .line 639
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 640
    const/4 v10, 0x2

    if-ne v0, v10, :cond_eb

    .line 641
    const-string/jumbo v0, "uri-grant"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 644
    const-string/jumbo v0, "userHandle"

    const/16 v9, -0x2710

    invoke-static {v8, v0, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 646
    if-eq v0, v9, :cond_44

    .line 648
    nop

    .line 649
    move v9, v0

    goto :goto_57

    .line 651
    :cond_44
    const-string/jumbo v0, "sourceUserId"

    invoke-static {v8, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 652
    const-string/jumbo v9, "targetUserId"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    move/from16 v19, v9

    move v9, v0

    move/from16 v0, v19

    .line 654
    :goto_57
    const-string/jumbo v10, "sourcePkg"

    invoke-interface {v8, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 655
    const-string/jumbo v11, "targetPkg"

    invoke-interface {v8, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 656
    const-string/jumbo v12, "uri"

    invoke-interface {v8, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 657
    const-string/jumbo v13, "prefix"

    invoke-static {v8, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    .line 658
    const-string v14, "modeFlags"

    invoke-static {v8, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    .line 659
    const-string v15, "createdTime"
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_7f} :catch_109
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_7f} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_7f} :catch_fd
    .catchall {:try_start_12 .. :try_end_7f} :catchall_f9

    move-object/from16 v16, v7

    :try_start_81
    invoke-static {v8, v15, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 664
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v17, v4

    const/high16 v4, 0xc0000

    invoke-direct {v1, v15, v9, v4}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 666
    if-eqz v4, :cond_b9

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_99} :catch_e4
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_99} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_99} :catch_e0
    .catchall {:try_start_81 .. :try_end_99} :catchall_de

    if-eqz v5, :cond_b9

    .line 667
    nop

    .line 669
    const/4 v4, -0x1

    :try_start_9d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v15, 0x2000

    invoke-interface {v5, v11, v15, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a7} :catch_a8
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_a7} :catch_e4
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a7} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_a7} :catch_e0
    .catchall {:try_start_9d .. :try_end_a7} :catchall_de

    .line 672
    goto :goto_aa

    .line 671
    :catch_a8
    move-exception v0

    move v0, v4

    .line 673
    :goto_aa
    if-eq v0, v4, :cond_b8

    .line 674
    :try_start_ac
    new-instance v4, Lcom/android/server/uri/GrantUri;

    invoke-direct {v4, v9, v12, v13}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {v1, v10, v11, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v0

    .line 677
    invoke-virtual {v0, v14, v6, v7}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 679
    :cond_b8
    goto :goto_ef

    .line 680
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persisted grant for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " had source "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but instead found "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_ac .. :try_end_dd} :catch_e4
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_dd} :catch_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_dd} :catch_e0
    .catchall {:try_start_ac .. :try_end_dd} :catchall_de

    goto :goto_ef

    .line 693
    :catchall_de
    move-exception v0

    goto :goto_123

    .line 690
    :catch_e0
    move-exception v0

    goto :goto_100

    .line 688
    :catch_e2
    move-exception v0

    goto :goto_106

    .line 686
    :catch_e4
    move-exception v0

    goto :goto_12a

    .line 641
    :cond_e6
    move-wide/from16 v17, v4

    move-object/from16 v16, v7

    goto :goto_ef

    .line 640
    :cond_eb
    move-wide/from16 v17, v4

    move-object/from16 v16, v7

    .line 685
    :goto_ef
    move-object/from16 v7, v16

    move-wide/from16 v4, v17

    const/4 v6, 0x0

    goto/16 :goto_1f

    .line 693
    :cond_f6
    move-object/from16 v16, v7

    goto :goto_12a

    :catchall_f9
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_123

    .line 690
    :catch_fd
    move-exception v0

    move-object/from16 v16, v7

    :goto_100
    move-object/from16 v6, v16

    goto :goto_113

    .line 688
    :catch_103
    move-exception v0

    move-object/from16 v16, v7

    :goto_106
    move-object/from16 v6, v16

    goto :goto_119

    .line 686
    :catch_109
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_12a

    .line 693
    :catchall_10d
    move-exception v0

    const/16 v16, 0x0

    goto :goto_123

    .line 690
    :catch_111
    move-exception v0

    const/4 v6, 0x0

    .line 691
    :goto_113
    :try_start_113
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11c

    .line 688
    :catch_117
    move-exception v0

    const/4 v6, 0x0

    .line 689
    :goto_119
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11c
    .catchall {:try_start_113 .. :try_end_11c} :catchall_120

    .line 693
    :goto_11c
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_12d

    :catchall_120
    move-exception v0

    move-object/from16 v16, v6

    :goto_123
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 686
    :catch_127
    move-exception v0

    const/16 v16, 0x0

    .line 693
    :goto_12a
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 694
    :goto_12d
    nop

    .line 695
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

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

    goto :goto_20

    .line 371
    :cond_16
    const-string/jumbo v1, "releasePersistableUriPermission"

    invoke-direct {p0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 375
    :goto_20
    const/4 v2, 0x3

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 378
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 379
    nop

    .line 381
    :try_start_28
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 383
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/4 v5, 0x1

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, v1, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    .line 385
    if-nez v3, :cond_65

    if-nez p4, :cond_65

    if-eqz p3, :cond_42

    goto :goto_65

    .line 386
    :cond_42
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No permission grants found for UID "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " and Uri "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 390
    :cond_65
    :goto_65
    if-eqz v3, :cond_6f

    .line 391
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 392
    invoke-direct {p0, v3}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 394
    :cond_6f
    if-eqz p4, :cond_79

    .line 395
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 396
    invoke-direct {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V

    .line 399
    :cond_79
    if-eqz v0, :cond_7e

    .line 400
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 402
    :cond_7e
    monitor-exit v2

    .line 403
    return-void

    .line 402
    :catchall_80
    move-exception p1

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_28 .. :try_end_82} :catchall_80

    throw p1
.end method

.method removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .registers 16

    .line 419
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 420
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must narrow by either package or user"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_e
    :goto_e
    nop

    .line 425
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 426
    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v2, v1, :cond_8f

    .line 427
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 428
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 431
    const/4 v6, 0x1

    if-eq p2, v0, :cond_30

    .line 432
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8d

    .line 433
    :cond_30
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 434
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 437
    if-eqz p1, :cond_58

    if-nez p4, :cond_50

    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    :cond_50
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 438
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 442
    :cond_58
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    if-nez p3, :cond_6b

    .line 443
    goto :goto_38

    .line 445
    :cond_6b
    if-eqz p3, :cond_6f

    .line 446
    move v9, v0

    goto :goto_71

    :cond_6f
    const/16 v9, -0x41

    .line 445
    :goto_71
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    .line 450
    iget v8, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_7d

    .line 451
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 454
    :cond_7d
    goto :goto_38

    .line 456
    :cond_7e
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 457
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 458
    add-int/lit8 v1, v1, -0x1

    .line 459
    add-int/lit8 v2, v2, -0x1

    .line 426
    :cond_8d
    add-int/2addr v2, v6

    goto :goto_17

    .line 464
    :cond_8f
    if-eqz v3, :cond_94

    .line 465
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 467
    :cond_94
    return-void
.end method

.method revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 13

    .line 779
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 780
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 781
    iget v2, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v3, 0xc0000

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 783
    if-nez v2, :cond_2f

    .line 784
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for permission revoke: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 784
    const-string p2, "UriGrantsManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 790
    :cond_2f
    move-object v0, p0

    move-object v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissions(Landroid/content/pm/IPackageManager;Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_95

    .line 793
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 794
    if-eqz v0, :cond_94

    .line 795
    nop

    .line 796
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    move v1, v2

    :goto_4c
    if-ltz v3, :cond_84

    .line 797
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 798
    if-eqz p1, :cond_5f

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 799
    goto :goto_81

    .line 801
    :cond_5f
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_81

    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 802
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 805
    or-int/lit8 v5, p4, 0x40

    invoke-virtual {v4, v5, v2}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 807
    iget v4, v4, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v4, :cond_81

    .line 808
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 796
    :cond_81
    :goto_81
    add-int/lit8 v3, v3, -0x1

    goto :goto_4c

    .line 812
    :cond_84
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 813
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 815
    :cond_8f
    if-eqz v1, :cond_94

    .line 816
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 819
    :cond_94
    return-void

    .line 822
    :cond_95
    nop

    .line 825
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v1

    move v0, v2

    :goto_9e
    if-ltz p2, :cond_fd

    .line 826
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 827
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 829
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_b2
    if-ltz v4, :cond_ef

    .line 830
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/uri/UriPermission;

    .line 831
    if-eqz p1, :cond_c5

    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c5

    .line 832
    goto :goto_ec

    .line 834
    :cond_c5
    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v7, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v6, v7, :cond_ec

    iget-object v6, v5, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v7, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 835
    invoke-virtual {v6, v7}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 838
    or-int/lit8 v6, p4, 0x40

    if-nez p1, :cond_df

    move v7, v1

    goto :goto_e0

    :cond_df
    move v7, v2

    :goto_e0
    invoke-virtual {v5, v6, v7}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v6

    or-int/2addr v0, v6

    .line 841
    iget v5, v5, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v5, :cond_ec

    .line 842
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 829
    :cond_ec
    :goto_ec
    add-int/lit8 v4, v4, -0x1

    goto :goto_b2

    .line 847
    :cond_ef
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 848
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 825
    :cond_fa
    add-int/lit8 p2, p2, -0x1

    goto :goto_9e

    .line 852
    :cond_fd
    if-eqz v0, :cond_102

    .line 853
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 855
    :cond_102
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

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

    move-result p3

    goto :goto_20

    .line 306
    :cond_16
    const-string/jumbo p3, "takePersistableUriPermission"

    invoke-direct {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 310
    :goto_20
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 313
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    nop

    .line 315
    :try_start_28
    new-instance v2, Lcom/android/server/uri/GrantUri;

    invoke-direct {v2, p4, p1, v0}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 317
    invoke-direct {p0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v3

    .line 318
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/4 v5, 0x1

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;Z)V

    invoke-direct {p0, p3, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p1

    .line 321
    if-eqz v3, :cond_44

    iget p4, v3, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr p4, p2

    if-ne p4, p2, :cond_44

    move p4, v5

    goto :goto_45

    :cond_44
    move p4, v0

    .line 323
    :goto_45
    if-eqz p1, :cond_4d

    iget v4, p1, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v5, v0

    .line 326
    :goto_4e
    if-nez p4, :cond_76

    if-eqz v5, :cond_53

    goto :goto_76

    .line 327
    :cond_53
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No persistable permission grants found for UID "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v2}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_76
    :goto_76
    if-eqz p4, :cond_7d

    .line 332
    invoke-virtual {v3, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p4

    or-int/2addr v0, p4

    .line 334
    :cond_7d
    if-eqz v5, :cond_84

    .line 335
    invoke-virtual {p1, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 338
    :cond_84
    invoke-direct {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrants(I)Z

    move-result p1

    or-int/2addr p1, v0

    .line 340
    if-eqz p1, :cond_8e

    .line 341
    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 343
    :cond_8e
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_90
    move-exception p1

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_28 .. :try_end_92} :catchall_90

    throw p1
.end method
