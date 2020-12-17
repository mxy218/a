.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.super Landroid/content/pm/ILauncherApps$Stub;
.source "LauncherAppsService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LauncherAppsImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;,
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LauncherAppsService"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList<",
            "Landroid/content/pm/IOnAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field private final mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field private final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private final mUm:Landroid/os/UserManager;

.field private final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Landroid/content/pm/ILauncherApps$Stub;-><init>()V

    .line 125
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 129
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 136
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 138
    const-class v0, Landroid/os/UserManagerInternal;

    .line 139
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 138
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 140
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 141
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 140
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 142
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 143
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 142
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 144
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 145
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 144
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 146
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 147
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 146
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 149
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p1, "x1"  # Landroid/os/UserHandle;
    .param p2, "x2"  # Landroid/os/UserHandle;
    .param p3, "x3"  # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 114
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method private canAccessProfile(ILjava/lang/String;)Z
    .registers 10
    .param p1, "targetUserId"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v0

    .line 301
    .local v0, "callingUserId":I
    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 303
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 305
    .local v2, "ident":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 306
    .local v4, "callingUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 307
    const-string v1, "LauncherAppsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for another profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not allowed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_54

    .line 309
    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 309
    return v1

    .line 312
    .end local v4  # "callingUserInfo":Landroid/content/pm/UserInfo;
    :cond_45
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 313
    nop

    .line 315
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2, v1}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v1

    return v1

    .line 312
    :catchall_54
    move-exception v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v1
.end method

.method private ensureShortcutPermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 656
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 655
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 659
    return-void

    .line 657
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller can\'t access shortcut information"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCallingUserId()I
    .registers 2

    .line 179
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "user"  # Landroid/os/UserHandle;

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 344
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 345
    .local v1, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 348
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 345
    const/high16 v3, 0xc0000

    invoke-virtual {v1, v0, v3, p2, v2}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 350
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    return-object v3

    .line 352
    :cond_30
    const/4 v3, 0x0

    return-object v3
.end method

.method private getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    if-nez v0, :cond_16

    .line 254
    nop

    .line 255
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerService;

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 257
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageInstallerService:Lcom/android/server/pm/PackageInstallerService;

    return-object v0
.end method

.method private hasApplicationDeclaredActivities(Landroid/content/pm/PackageParser$Package;)Z
    .registers 6
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 472
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 473
    return v1

    .line 475
    :cond_6
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 476
    return v1

    .line 480
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 482
    return v1

    .line 484
    :cond_2b
    return v2
.end method

.method private hasComponentsAndRequestsPermissions(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 452
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 453
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 454
    .local v0, "pmInt":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 455
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 457
    return v2

    .line 459
    :cond_10
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 460
    return v2

    .line 462
    :cond_19
    invoke-direct {p0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasApplicationDeclaredActivities(Landroid/content/pm/PackageParser$Package;)Z

    move-result v3

    if-nez v3, :cond_38

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 463
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 464
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 465
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 466
    return v2

    .line 468
    :cond_38
    const/4 v2, 0x1

    return v2
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 8
    .param p1, "listeningUser"  # Landroid/os/UserHandle;
    .param p2, "user"  # Landroid/os/UserHandle;
    .param p3, "debugMsg"  # Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 910
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 909
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 8
    .param p1, "user"  # Landroid/os/UserHandle;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 489
    .local v0, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 490
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 491
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 492
    goto :goto_37

    .line 494
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 495
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_2b

    .line 496
    goto :goto_37

    .line 498
    :cond_2b
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 499
    const/4 v4, 0x1

    return v4

    .line 489
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3  # "componentName":Landroid/content/ComponentName;
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 502
    .end local v1  # "i":I
    :cond_3a
    const/4 v1, 0x0

    return v1
.end method

.method private queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 537
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot retrieve activities"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 538
    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 542
    .local v0, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 544
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 545
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 546
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 549
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 546
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v4

    .line 550
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_31

    .line 552
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 550
    return-object v5

    .line 552
    .end local v3  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_31
    move-exception v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "user"  # Landroid/os/UserHandle;
    .param p2, "appInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 440
    const/4 v0, 0x0

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_20

    .line 443
    :cond_10
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 444
    return v0

    .line 448
    :cond_19
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasComponentsAndRequestsPermissions(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 441
    :cond_20
    :goto_20
    return v0
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 10
    .param p1, "intents"  # [Landroid/content/Intent;
    .param p2, "publisherPackage"  # Ljava/lang/String;
    .param p3, "startActivityOptions"  # Landroid/os/Bundle;
    .param p4, "userId"  # I

    .line 758
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p2, p4, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    .line 760
    .local v1, "code":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 761
    const/4 v0, 0x1

    return v0

    .line 763
    :cond_f
    const-string v2, "LauncherAppsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start activity, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_25} :catch_26

    .line 765
    return v0

    .line 766
    .end local v1  # "code":I
    :catch_26
    move-exception v1

    .line 770
    .local v1, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method private startWatchingPackageBroadcasts()V
    .registers 6

    .line 264
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 265
    return-void
.end method

.method private stopWatchingPackageBroadcasts()V
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->unregister()V

    .line 275
    return-void
.end method


# virtual methods
.method public addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "listener"  # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 193
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_11

    .line 197
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startWatchingPackageBroadcasts()V

    .line 199
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 200
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    new-instance v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v5

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;-><init>(Landroid/os/UserHandle;Ljava/lang/String;II)V

    .line 200
    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method

.method checkCallbackCount()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 283
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 285
    :cond_e
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 240
    .local v1, "userIds":[I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 242
    .local v2, "token":J
    :try_start_16
    array-length v4, v1

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_2f

    aget v6, v1, v5

    .line 243
    .local v6, "userId":I
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 244
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 243
    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_39

    .line 242
    nop

    .end local v6  # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 247
    :cond_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    nop

    .line 249
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 247
    :catchall_39
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot access usage limit"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 638
    return-object v1

    .line 640
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 645
    invoke-virtual {v0, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object v0

    .line 646
    .local v0, "data":Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    if-nez v0, :cond_26

    .line 647
    return-object v1

    .line 649
    :cond_26
    new-instance v1, Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 650
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getTotalUsageLimit()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getUsageRemaining()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(JJ)V

    .line 649
    return-object v1

    .line 641
    .end local v0  # "data":Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not the recents app"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 617
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 621
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 623
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 624
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 625
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 626
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 625
    invoke-virtual {v3, p2, p3, v0, v4}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    .line 627
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 629
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    return-object v4

    .line 629
    .end local v3  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v4  # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 369
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 375
    .local v0, "launcherActivities":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_hidden_icon_apps_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_26

    .line 377
    return-object v0

    .line 379
    :cond_26
    if-nez v0, :cond_2a

    .line 381
    const/4 v1, 0x0

    return-object v1

    .line 384
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    .line 385
    .local v1, "callingUid":I
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 387
    .local v2, "ident":J
    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_ef

    if-eqz v4, :cond_47

    .line 389
    nop

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 389
    return-object v0

    .line 391
    :cond_47
    :try_start_47
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_ef

    if-eqz v4, :cond_54

    .line 393
    nop

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 393
    return-object v0

    .line 396
    :cond_54
    :try_start_54
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 398
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 399
    .local v5, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/4 v6, 0x0

    if-eqz p2, :cond_94

    .line 402
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_ef

    if-lez v7, :cond_73

    .line 403
    nop

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 403
    return-object v0

    .line 405
    :cond_73
    nop

    .line 406
    :try_start_74
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 405
    invoke-virtual {v5, p2, v6, v1, v7}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 407
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, p3, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 408
    invoke-direct {p0, p2, v1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 409
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_8b

    .line 410
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v7  # "info":Landroid/content/pm/ResolveInfo;
    :cond_8b
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_90
    .catchall {:try_start_74 .. :try_end_90} :catchall_ef

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 413
    return-object v7

    .line 415
    .end local v6  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_94
    :try_start_94
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 416
    .local v7, "visiblePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 417
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    nop

    .end local v9  # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_9d

    .line 419
    :cond_b2
    nop

    .line 420
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 419
    invoke-virtual {v5, v6, v8, v1}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object v6

    .line 421
    .local v6, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_bf
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 422
    .local v9, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e5

    .line 423
    invoke-direct {p0, p3, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v10

    if-nez v10, :cond_da

    .line 424
    goto :goto_bf

    .line 426
    :cond_da
    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, v1, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 428
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_e5

    .line 429
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v9  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10  # "info":Landroid/content/pm/ResolveInfo;
    :cond_e5
    goto :goto_bf

    .line 433
    :cond_e6
    new-instance v8, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_eb
    .catchall {:try_start_94 .. :try_end_eb} :catchall_ef

    .line 435
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 433
    return-object v8

    .line 435
    .end local v4  # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v5  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v6  # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7  # "visiblePackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_ef
    move-exception v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw v4
.end method

.method public getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 531
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 15
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 561
    return-object v1

    .line 563
    :cond_11
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 569
    .local v9, "identity":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    move-object v5, v0

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 573
    .local v2, "pi":Landroid/app/PendingIntent;
    if-nez v2, :cond_32

    goto :goto_36

    :cond_32
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3a

    .line 575
    :goto_36
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 573
    return-object v1

    .line 575
    .end local v2  # "pi":Landroid/app/PendingIntent;
    :catchall_3a
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "id"  # Ljava/lang/String;
    .param p4, "targetUserId"  # I

    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 710
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 711
    const/4 v0, 0x0

    return-object v0

    .line 714
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 12
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "id"  # Ljava/lang/String;
    .param p4, "targetUserId"  # I

    .line 697
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 698
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 699
    const/4 v0, 0x0

    return v0

    .line 702
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "changedSince"  # J
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "shortcutIds"  # Ljava/util/List;
    .param p6, "componentName"  # Landroid/content/ComponentName;
    .param p7, "flags"  # I
    .param p8, "targetUser"  # Landroid/os/UserHandle;

    .line 665
    move-object v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 667
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 669
    :cond_18
    if-eqz p5, :cond_25

    if-eqz p4, :cond_1d

    goto :goto_25

    .line 670
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "To query by shortcut ID, package name must also be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_25
    :goto_25
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 676
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v4

    .line 678
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 679
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v13

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v14

    .line 676
    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 675
    return-object v1
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 604
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot get launcher extras"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 605
    const/4 v0, 0x0

    return-object v0

    .line 607
    :cond_e
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 608
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 609
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 722
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 721
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method injectBinderCallingPid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 160
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingPid()I

    move-result v0

    return v0
.end method

.method injectBinderCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v0

    return v0
.end method

.method final injectCallingUserId()I
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method injectRestoreCallingIdentity(J)V
    .registers 3
    .param p1, "token"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    return-void
.end method

.method public isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check component"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 779
    return v1

    .line 782
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 783
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 785
    .local v2, "ident":J
    :try_start_16
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 786
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 787
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 790
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 787
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 795
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v6
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_35

    if-eqz v6, :cond_31

    const/4 v1, 0x1

    .line 797
    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 795
    return v1

    .line 797
    .end local v4  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5  # "info":Landroid/content/pm/ActivityInfo;
    :catchall_35
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot check package"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 583
    return v1

    .line 586
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 587
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 589
    .local v2, "ident":J
    :try_start_16
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 590
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 591
    .local v4, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 594
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 591
    invoke-virtual {v4, p2, v5, v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 595
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_31

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_35

    if-eqz v6, :cond_31

    const/4 v1, 0x1

    .line 597
    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    return v1

    .line 597
    .end local v4  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5  # "info":Landroid/content/pm/PackageInfo;
    :catchall_35
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public synthetic lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(Landroid/os/UserHandle;I)Z
    .registers 5
    .param p1, "callingIdUserHandle"  # Landroid/os/UserHandle;
    .param p2, "eventUserId"  # I

    .line 231
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v1, "shouldReceiveEvent"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 12
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p4, "targetUser"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 685
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot pin shortcuts"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 687
    return-void

    .line 690
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 691
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 690
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 692
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"  # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    return-void
.end method

.method public registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/content/pm/IPackageInstallerCallback;

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 229
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    .local v0, "callingIdUserHandle":Landroid/os/UserHandle;
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 233
    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/content/pm/IOnAppsChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 216
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_13

    .line 217
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 219
    :cond_13
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;
    .registers 10
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 509
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot resolve activity"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 510
    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 514
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 516
    .local v1, "ident":J
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 517
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 518
    .local v3, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v4, 0xc0000

    .line 521
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 518
    invoke-virtual {v3, p2, v4, v0, v5}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 523
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 518
    return-object v4

    .line 523
    .end local v3  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 357
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "cannot get shouldHideFromSuggestions"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 358
    return v1

    .line 360
    :cond_e
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 362
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result v2

    .line 363
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method

.method public showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 20
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "component"  # Landroid/content/ComponentName;
    .param p4, "sourceBounds"  # Landroid/graphics/Rect;
    .param p5, "opts"  # Landroid/os/Bundle;
    .param p6, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 886
    move-object v1, p0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v2, "Cannot show app details"

    invoke-direct {p0, v0, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 887
    return-void

    .line 891
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 893
    .local v2, "ident":J
    :try_start_12
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v6, "package"

    const/4 v7, 0x0

    .line 895
    invoke-static {v6, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 896
    .local v4, "intent":Landroid/content/Intent;
    const v5, 0x10008000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_45

    .line 897
    move-object/from16 v5, p4

    :try_start_2d
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_43

    .line 899
    .end local v0  # "packageName":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    nop

    .line 901
    iget-object v7, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 902
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 901
    move-object v8, p1

    move-object v9, p2

    move-object v10, v4

    move-object/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 903
    return-void

    .line 899
    .end local v4  # "intent":Landroid/content/Intent;
    :catchall_43
    move-exception v0

    goto :goto_48

    :catchall_45
    move-exception v0

    move-object/from16 v5, p4

    :goto_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 23
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "component"  # Landroid/content/ComponentName;
    .param p4, "sourceBounds"  # Landroid/graphics/Rect;
    .param p5, "opts"  # Landroid/os/Bundle;
    .param p6, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 828
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v3, "Cannot start activity"

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 829
    return-void

    .line 832
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 833
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 835
    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const/4 v4, 0x0

    .line 841
    .local v4, "canLaunch":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v11

    .line 842
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 844
    .local v12, "ident":J
    :try_start_38
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 845
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 849
    .local v0, "pmInt":Landroid/content/pm/PackageManagerInternal;
    const/high16 v5, 0xc0000

    .line 852
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 849
    invoke-virtual {v0, v3, v5, v11, v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object v5

    .line 853
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 854
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4f
    if-ge v7, v6, :cond_99

    .line 855
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 856
    .local v8, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 858
    iget-boolean v9, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_7f

    .line 865
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 867
    const/4 v4, 0x1

    .line 868
    move v14, v4

    goto :goto_9a

    .line 859
    :cond_7f
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot launch non-exported components "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3  # "launchIntent":Landroid/content/Intent;
    .end local v4  # "canLaunch":Z
    .end local v11  # "callingUid":I
    .end local v12  # "ident":J
    .end local p0  # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "component":Landroid/content/ComponentName;
    .end local p4  # "sourceBounds":Landroid/graphics/Rect;
    .end local p5  # "opts":Landroid/os/Bundle;
    .end local p6  # "user":Landroid/os/UserHandle;
    throw v9
    :try_end_96
    .catchall {:try_start_38 .. :try_end_96} :catchall_cb

    .line 854
    .end local v8  # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v3  # "launchIntent":Landroid/content/Intent;
    .restart local v4  # "canLaunch":Z
    .restart local v11  # "callingUid":I
    .restart local v12  # "ident":J
    .restart local p0  # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "component":Landroid/content/ComponentName;
    .restart local p4  # "sourceBounds":Landroid/graphics/Rect;
    .restart local p5  # "opts":Landroid/os/Bundle;
    .restart local p6  # "user":Landroid/os/UserHandle;
    :cond_96
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :cond_99
    move v14, v4

    .line 871
    .end local v4  # "canLaunch":Z
    .end local v7  # "i":I
    .local v14, "canLaunch":Z
    :goto_9a
    if-eqz v14, :cond_b1

    .line 876
    .end local v0  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6  # "size":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    nop

    .line 878
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 879
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 878
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v3

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 880
    return-void

    .line 872
    .restart local v0  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v5  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6  # "size":I
    :cond_b1
    :try_start_b1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v3  # "launchIntent":Landroid/content/Intent;
    .end local v11  # "callingUid":I
    .end local v12  # "ident":J
    .end local v14  # "canLaunch":Z
    .end local p0  # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "component":Landroid/content/ComponentName;
    .end local p4  # "sourceBounds":Landroid/graphics/Rect;
    .end local p5  # "opts":Landroid/os/Bundle;
    .end local p6  # "user":Landroid/os/UserHandle;
    throw v4
    :try_end_c8
    .catchall {:try_start_b1 .. :try_end_c8} :catchall_c8

    .line 876
    .end local v0  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v5  # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6  # "size":I
    .restart local v3  # "launchIntent":Landroid/content/Intent;
    .restart local v11  # "callingUid":I
    .restart local v12  # "ident":J
    .restart local v14  # "canLaunch":Z
    .restart local p0  # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "component":Landroid/content/ComponentName;
    .restart local p4  # "sourceBounds":Landroid/graphics/Rect;
    .restart local p5  # "opts":Landroid/os/Bundle;
    .restart local p6  # "user":Landroid/os/UserHandle;
    :catchall_c8
    move-exception v0

    move v4, v14

    goto :goto_cc

    .end local v14  # "canLaunch":Z
    .restart local v4  # "canLaunch":Z
    :catchall_cb
    move-exception v0

    :goto_cc
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 15
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "sessionInfo"  # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p4, "sourceBounds"  # Landroid/graphics/Rect;
    .param p5, "opts"  # Landroid/os/Bundle;
    .param p6, "userHandle"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 805
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 806
    .local v6, "userId":I
    const-string v0, "Cannot start details activity"

    invoke-direct {p0, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 807
    return-void

    .line 810
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 812
    const-string/jumbo v2, "market"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 813
    const-string v2, "details"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 814
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 816
    const-string v2, "android-app"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 817
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 816
    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 818
    .local v7, "i":Landroid/content/Intent;
    invoke-virtual {v7, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 820
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, p5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 822
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 18
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "shortcutId"  # Ljava/lang/String;
    .param p4, "sourceBounds"  # Landroid/graphics/Rect;
    .param p5, "startActivityOptions"  # Landroid/os/Bundle;
    .param p6, "targetUserId"  # I

    .line 728
    move-object v0, p0

    move/from16 v9, p6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 729
    const-string v1, "Cannot start activity"

    invoke-direct {p0, v9, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_10

    .line 730
    return v10

    .line 734
    :cond_10
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 739
    :cond_24
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 740
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 741
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v8

    .line 739
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    .line 742
    .local v1, "intents":[Landroid/content/Intent;
    if-eqz v1, :cond_5a

    array-length v2, v1

    if-nez v2, :cond_45

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    goto :goto_5e

    .line 747
    :cond_45
    aget-object v2, v1, v10

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 748
    aget-object v2, v1, v10

    move-object v3, p4

    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 750
    move-object v2, p2

    move-object/from16 v4, p5

    invoke-direct {p0, v1, p2, v4, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v5

    return v5

    .line 742
    :cond_5a
    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    .line 743
    :goto_5e
    return v10
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    const/4 v0, -0x1

    .line 323
    .local v0, "packageUid":I
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const v2, 0xc2000

    .line 327
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 323
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v1

    .line 329
    goto :goto_17

    .line 328
    :catch_16
    move-exception v1

    .line 330
    :goto_17
    if-gez v0, :cond_2f

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherAppsService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 336
    return-void

    .line 334
    :cond_36
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling package name mismatch"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
