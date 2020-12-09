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
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    .line 138
    const-class p1, Landroid/os/UserManagerInternal;

    .line 139
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManagerInternal;

    .line 138
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 140
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 141
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 140
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 142
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 143
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 142
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 144
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 145
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 144
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 146
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 147
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 146
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 148
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 149
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 150
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 4

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/content/pm/ShortcutServiceInternal;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method private canAccessProfile(ILjava/lang/String;)Z
    .registers 8

    .line 299
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v0

    .line 301
    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 303
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 305
    :try_start_c
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 306
    if-eqz v4, :cond_45

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 307
    const-string v1, "LauncherAppsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for another profile "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_54

    .line 309
    const/4 p1, 0x0

    .line 312
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 309
    return p1

    .line 312
    :cond_45
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 313
    nop

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectCallingUserId()I

    move-result v2

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result p1

    return p1

    .line 312
    :catchall_54
    move-exception p1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method private ensureShortcutPermission(Ljava/lang/String;)V
    .registers 6

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 650
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 649
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 653
    return-void

    .line 651
    :cond_18
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller can\'t access shortcut information"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 7

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 341
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 343
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 344
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 345
    nop

    .line 348
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 345
    const/high16 v1, 0xc0000

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object p1

    .line 349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_30

    .line 350
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    .line 352
    :cond_30
    const/4 p1, 0x0

    return-object p1
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

.method private hasDefaultEnableLauncherActivity(Ljava/lang/String;)Z
    .registers 6

    .line 464
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 465
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 466
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    nop

    .line 470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 471
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 469
    const/16 v3, 0x200

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object p1

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 473
    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    if-ge v2, v0, :cond_3f

    .line 474
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v3, :cond_3c

    .line 475
    const/4 p1, 0x1

    return p1

    .line 473
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 478
    :cond_3f
    return v1
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 6

    .line 903
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 904
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 903
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 7

    .line 482
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 483
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 484
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 485
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 486
    goto :goto_38

    .line 488
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 489
    if-nez v2, :cond_2c

    .line 490
    goto :goto_38

    .line 492
    :cond_2c
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 493
    const/4 p1, 0x1

    return p1

    .line 483
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 496
    :cond_3b
    return v0
.end method

.method private queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 8
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

    .line 531
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot retrieve activities"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 532
    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 536
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 538
    :try_start_16
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 539
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 540
    const/high16 v3, 0xc0000

    .line 543
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 540
    invoke-virtual {v2, p2, v3, p1, p3}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object p1

    .line 544
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_31

    .line 546
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 544
    return-object p2

    .line 546
    :catchall_31
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method private requestsPermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2

    .line 460
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    .line 440
    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3a

    .line 443
    :cond_10
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isManagedProfileAdmin(Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 444
    return v0

    .line 446
    :cond_19
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 447
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 448
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 449
    if-nez p1, :cond_2a

    .line 451
    return v0

    .line 455
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->requestsPermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->hasDefaultEnableLauncherActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 v0, 0x1

    :cond_39
    return v0

    .line 441
    :cond_3a
    :goto_3a
    return v0
.end method

.method private startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 7

    .line 752
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, p2, p4, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p1

    .line 754
    invoke-static {p1}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 755
    const/4 p1, 0x1

    return p1

    .line 757
    :cond_f
    const-string p2, "LauncherAppsService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Couldn\'t start activity, code="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_25} :catch_26

    .line 759
    return v0

    .line 760
    :catch_26
    move-exception p1

    .line 764
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
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p1
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
    .registers 9
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
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 242
    :try_start_16
    array-length v3, v0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_2e

    aget v5, v0, v4

    .line 243
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageInstallerService;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 243
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_38

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 247
    :cond_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    nop

    .line 249
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 247
    :catchall_38
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;
    .registers 8

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot access usage limit"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 632
    return-object v0

    .line 634
    :cond_11
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 638
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 639
    invoke-virtual {p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object p1

    .line 640
    if-nez p1, :cond_26

    .line 641
    return-object v0

    .line 643
    :cond_26
    new-instance p2, Landroid/content/pm/LauncherApps$AppUsageLimit;

    .line 644
    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getTotalUsageLimit()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;->getUsageRemaining()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(JJ)V

    .line 643
    return-object p2

    .line 635
    :cond_34
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller is not the recents app"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 611
    const/4 p1, 0x0

    return-object p1

    .line 614
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 615
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 617
    :try_start_16
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 618
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 619
    nop

    .line 620
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 619
    invoke-virtual {v2, p2, p3, p1, p4}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2c

    .line 621
    nop

    .line 623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    return-object p1

    .line 623
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 11
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

    move-result-object p1

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_hidden_icon_apps_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_26

    .line 377
    return-object p1

    .line 379
    :cond_26
    if-nez p1, :cond_2a

    .line 381
    const/4 p1, 0x0

    return-object p1

    .line 384
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v0

    .line 385
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 387
    :try_start_32
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_ee

    if-eqz v3, :cond_47

    .line 389
    nop

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 389
    return-object p1

    .line 391
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_ee

    if-eqz v3, :cond_54

    .line 393
    nop

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 393
    return-object p1

    .line 396
    :cond_54
    :try_start_54
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 398
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 399
    const/4 v5, 0x0

    if-eqz p2, :cond_94

    .line 402
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_ee

    if-lez v6, :cond_73

    .line 403
    nop

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 403
    return-object p1

    .line 405
    :cond_73
    nop

    .line 406
    :try_start_74
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 405
    invoke-virtual {v4, p2, v5, v0, p1}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 407
    invoke-direct {p0, p3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 408
    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 409
    if-eqz p1, :cond_8b

    .line 410
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_8b
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_90
    .catchall {:try_start_74 .. :try_end_90} :catchall_ee

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 413
    return-object p1

    .line 415
    :cond_94
    :try_start_94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 416
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 417
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_9d

    .line 419
    :cond_b1
    nop

    .line 420
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 419
    invoke-virtual {v4, v5, p2, v0}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(III)Ljava/util/List;

    move-result-object p2

    .line 421
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_be
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 422
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    .line 423
    invoke-direct {p0, p3, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->shouldShowSyntheticActivity(Landroid/os/UserHandle;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_d9

    .line 424
    goto :goto_be

    .line 426
    :cond_d9
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v0, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getHiddenAppActivityInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 428
    if-eqz v4, :cond_e4

    .line 429
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_e4
    goto :goto_be

    .line 433
    :cond_e5
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_ea
    .catchall {:try_start_94 .. :try_end_ea} :catchall_ee

    .line 435
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    .line 433
    return-object p1

    .line 435
    :catchall_ee
    move-exception p1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectRestoreCallingIdentity(J)V

    throw p1
.end method

.method public getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 525
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->queryActivitiesForUser(Ljava/lang/String;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_11

    .line 555
    return-object v0

    .line 557
    :cond_11
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 563
    :try_start_23
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 567
    if-nez p3, :cond_31

    goto :goto_35

    :cond_31
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_39

    .line 569
    :goto_35
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    return-object v0

    .line 569
    :catchall_39
    move-exception p3

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 11

    .line 703
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 704
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 705
    const/4 p1, 0x0

    return-object p1

    .line 708
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11

    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 692
    const-string v0, "Cannot access shortcuts"

    invoke-direct {p0, p4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 693
    const/4 p1, 0x0

    return p1

    .line 696
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getShortcuts(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 23

    .line 659
    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "Cannot get shortcuts"

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 661
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 663
    :cond_18
    if-eqz p5, :cond_25

    if-eqz p4, :cond_1d

    goto :goto_25

    .line 664
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by shortcut ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_25
    :goto_25
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 670
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v3

    .line 672
    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 673
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v13

    .line 670
    move-object v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v13}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 669
    return-object v1
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .registers 5

    .line 598
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot get launcher extras"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 599
    const/4 p1, 0x0

    return-object p1

    .line 601
    :cond_e
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 602
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 603
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 6

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v1

    .line 716
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v3

    .line 715
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p1

    return p1
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    return-void
.end method

.method public isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 772
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check component"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 773
    return v0

    .line 776
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 779
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 780
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 781
    const/high16 v4, 0xc0000

    .line 784
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 781
    invoke-virtual {v3, p2, v4, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 789
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_35

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    .line 791
    :cond_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    return v0

    .line 791
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot check package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 577
    return v0

    .line 580
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 581
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 583
    :try_start_16
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 584
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 585
    const/high16 v4, 0xc0000

    .line 588
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 585
    invoke-virtual {v3, p2, v4, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 589
    if-eqz p1, :cond_31

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_35

    if-eqz p1, :cond_31

    const/4 v0, 0x1

    .line 591
    :cond_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    return v0

    .line 591
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$registerPackageInstallerCallback$0$LauncherAppsService$LauncherAppsImpl(Landroid/os/UserHandle;I)Z
    .registers 4

    .line 231
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p2, "shouldReceiveEvent"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 12
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

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot pin shortcuts"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 681
    return-void

    .line 684
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 685
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 684
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 686
    return-void
.end method

.method postToPackageMonitorHandler(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    return-void
.end method

.method public registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 5

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 229
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$LauncherAppsService$LauncherAppsImpl$PR6SMHDNFTsnoL92MFZskM-zN8k;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 233
    return-void
.end method

.method public removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V
    .registers 4
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
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    invoke-virtual {p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_13

    .line 217
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->stopWatchingPackageBroadcasts()V

    .line 219
    :cond_13
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public resolveActivity(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/ActivityInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const-string v0, "Cannot resolve activity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 504
    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    .line 508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 510
    :try_start_16
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 511
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 512
    const/high16 v3, 0xc0000

    .line 515
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 512
    invoke-virtual {v2, p2, v3, p1, p3}, Landroid/content/pm/PackageManagerInternal;->getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2c

    .line 517
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return-object p1

    .line 517
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5

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
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getDistractingPackageRestrictions(Ljava/lang/String;I)I

    move-result p1

    .line 363
    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move p2, v1

    :goto_24
    return p2
.end method

.method public showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot show app details"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 881
    return-void

    .line 885
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 887
    :try_start_11
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 888
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v3, "package"

    const/4 v4, 0x0

    .line 889
    invoke-static {v3, p3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {v5, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 890
    const p3, 0x10008000

    invoke-virtual {v5, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 891
    invoke-virtual {v5, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_3e

    .line 893
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 894
    nop

    .line 895
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 896
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 895
    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 897
    return-void

    .line 893
    :catchall_3e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const-string v1, "Cannot start activity"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 823
    return-void

    .line 826
    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    invoke-virtual {v4, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 829
    const/high16 p4, 0x10200000

    invoke-virtual {v4, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 831
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    nop

    .line 835
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p4

    .line 836
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 838
    :try_start_31
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 839
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 843
    const/high16 v3, 0xc0000

    .line 846
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 843
    invoke-virtual {v2, v4, v3, p4, v5}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;

    move-result-object p4

    .line 847
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    .line 848
    const/4 v3, 0x0

    move v5, v3

    :goto_49
    if-ge v5, v2, :cond_93

    .line 849
    invoke-interface {p4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 850
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 851
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 852
    iget-boolean p4, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p4, :cond_79

    .line 859
    const/4 p4, 0x0

    invoke-virtual {v4, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    invoke-virtual {v4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 861
    nop

    .line 862
    const/4 v3, 0x1

    goto :goto_93

    .line 853
    :cond_79
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot launch non-exported components "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_90
    .catchall {:try_start_31 .. :try_end_90} :catchall_bd

    .line 848
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 865
    :cond_93
    :goto_93
    if-eqz v3, :cond_a6

    .line 870
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    nop

    .line 872
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 873
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 872
    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 874
    return-void

    .line 866
    :cond_a6
    :try_start_a6
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bd
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_bd

    .line 870
    :catchall_bd
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 799
    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 800
    const-string p6, "Cannot start details activity"

    invoke-direct {p0, v5, p6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_d

    .line 801
    return-void

    .line 804
    :cond_d
    new-instance p6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 806
    const-string v1, "market"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 807
    const-string v1, "details"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p3, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    .line 808
    const-string v1, "id"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 809
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 805
    invoke-virtual {p6, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p3

    new-instance p6, Landroid/net/Uri$Builder;

    invoke-direct {p6}, Landroid/net/Uri$Builder;-><init>()V

    .line 810
    const-string v0, "android-app"

    invoke-virtual {p6, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p6

    .line 811
    invoke-virtual {p6, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-virtual {p6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p6

    .line 810
    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p3, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 812
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;I)I

    .line 816
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 18

    .line 722
    move-object v0, p0

    move/from16 v9, p6

    invoke-virtual {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 723
    const-string v1, "Cannot start activity"

    invoke-direct {p0, v9, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->canAccessProfile(ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_10

    .line 724
    return v10

    .line 728
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

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->ensureShortcutPermission(Ljava/lang/String;)V

    .line 733
    :cond_24
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 734
    invoke-direct {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUserId()I

    move-result v2

    .line 735
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingPid()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result v8

    .line 733
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    .line 736
    if-eqz v1, :cond_56

    array-length v2, v1

    if-nez v2, :cond_41

    goto :goto_56

    .line 741
    :cond_41
    aget-object v2, v1, v10

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 742
    aget-object v2, v1, v10

    move-object v3, p4

    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 744
    move-object v2, p2

    move-object/from16 v3, p5

    invoke-direct {p0, v1, p2, v3, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0

    .line 737
    :cond_56
    :goto_56
    return v10
.end method

.method verifyCallingPackage(Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    nop

    .line 323
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0xc2000

    .line 327
    invoke-static {}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 323
    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_15

    .line 329
    goto :goto_17

    .line 328
    :catch_15
    move-exception v0

    const/4 v0, -0x1

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

    move-result-object p1

    const-string v1, "LauncherAppsService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->injectBinderCallingUid()I

    move-result p1

    if-ne v0, p1, :cond_36

    .line 336
    return-void

    .line 334
    :cond_36
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Calling package name mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
