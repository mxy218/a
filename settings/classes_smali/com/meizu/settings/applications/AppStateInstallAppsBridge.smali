.class public Lcom/meizu/settings/applications/AppStateInstallAppsBridge;
.super Lcom/meizu/settings/applications/AppStateBaseBridge;
.source "AppStateInstallAppsBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    }
.end annotation


# static fields
.field static final FILTER_APP_SOURCES:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field static final FILTER_APP_SOURCES_ALL:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field private static final HIDE_PKG_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mIpm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-class v0, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->HIDE_PKG_LIST:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->HIDE_PKG_LIST:Ljava/util/ArrayList;

    const-string v1, "com.meizu.share"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->HIDE_PKG_LIST:Ljava/util/ArrayList;

    const-string v1, "com.meizu.filemanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->HIDE_PKG_LIST:Ljava/util/ArrayList;

    const-string v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$1;

    invoke-direct {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES_ALL:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 156
    new-instance v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$2;

    invoke-direct {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V
    .registers 4

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/applications/AppStateBaseBridge;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V

    .line 39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    const-string p2, "appops"

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .line 21
    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->HIDE_PKG_LIST:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAppOpMode(IILjava/lang/String;)I
    .registers 4

    .line 79
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private hasPermission(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 70
    :try_start_1
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_b

    if-nez p0, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 73
    :catch_b
    sget-object p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager dead. Cannot get permission info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 60
    :try_start_0
    iget-object p0, p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->mIpm:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    .line 63
    :catch_b
    sget-object p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    const-string p1, "PackageManager dead. Cannot get permission info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method createInstallAppsStateFor(Ljava/lang/String;I)Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    .registers 6

    .line 83
    new-instance v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-direct {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;-><init>()V

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 84
    invoke-direct {p0, v1, p1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionRequested:Z

    .line 86
    invoke-direct {p0, v1, p2}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->permissionGranted:Z

    const/16 v1, 0x42

    .line 88
    invoke-direct {p0, v1, p2, p1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->getAppOpMode(IILjava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->appOpMode:I

    .line 91
    sget-object p0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "packageName:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", toString:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected loadAllExtraInfo()V
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 54
    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->updateExtraInfo(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method protected updateExtraInfo(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .registers 4

    .line 45
    invoke-virtual {p0, p2, p3}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p0

    iput-object p0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
