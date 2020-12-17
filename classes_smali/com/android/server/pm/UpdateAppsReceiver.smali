.class public Lcom/android/server/pm/UpdateAppsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAppsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;
    }
.end annotation


# static fields
.field private static final DEXOPT_LATENCY:J = 0x1d4c0L

.field private static final INSTALL_FAILED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UpdateAppsReceiver"

.field private static final TAG_DEFAULT_OP:Ljava/lang/String; = "DefaultOp"

.field private static final TAG_PACKAGE_STATE:Ljava/lang/String; = "PackageState"

.field private static final TAG_UPDATE_APPS:Ljava/lang/String; = "UpdateApps"

.field private static final UPDATE_INSTALL_COMPLETE:I = 0x67

.field private static final UPDATE_INSTALL_FAILED:I = 0x68

.field private static final UPDATE_INSTALL_PATH:Ljava/lang/String; = "/custom/gms/apk/"

.field private static final UPDATE_INSTALL_READY:I = 0x65

.field private static final UPDATE_INSTALL_START:I = 0x66

.field private static final UPDATE_PEDOMETER_PATH:Ljava/lang/String; = "/custom/3rd-party/apk/Pedometer"

.field private static final UPDATE_VERIIFY_PATH:Ljava/lang/String; = "/data/app/.need_init"

.field public static limitServiceComponentName:Landroid/content/ComponentName;

.field private static mIndex:I

.field private static mInstallApk:Ljava/io/File;

.field private static mInstalledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstalledListSize:I

.field private static mLenght:I

.field private static mMediaShared:Z

.field private static mPm:Landroid/content/pm/PackageManager;

.field private static mUpdateInstallApks:[Ljava/io/File;


# instance fields
.field dataDir:Ljava/io/File;

.field private firstBootAlreadyDefaultOp:Z

.field private firstBootAlreadyUpdateApps:Z

.field final installObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public limitPackageName:Ljava/lang/String;

.field public limitPackageName2:Ljava/lang/String;

.field private mFpm:Landroid/content/pm/FlymePackageManager;

.field private mHandler:Landroid/os/Handler;

.field private final mLocked:Ljava/lang/Object;

.field private mVerifyFileExist:Z

.field private final packageValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 62
    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    .line 63
    sput-boolean v0, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qihoo360.contacts"

    const-string v2, "com.qihoo360.contacts.service.PEService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->packageValueList:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    .line 80
    const-string v0, "com.tencent.pb"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    .line 81
    const-string v0, "com.qihoo360.contacts"

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$2;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 314
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$3;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->installObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    .line 428
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UpdateAppsReceiver;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/pm/UpdateAppsReceiver;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"  # Z

    .line 49
    iput-boolean p1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mVerifyFileExist:Z

    return p1
.end method

.method static synthetic access$100()Landroid/content/pm/PackageManager;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->udpateInstallComplete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UpdateAppsReceiver;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"  # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallFailed(I)V

    return-void
.end method

.method static synthetic access$1300()I
    .registers 1

    .line 49
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/content/pm/FlymePackageManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .param p0, "x0"  # Ljava/util/List;

    .line 49
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 49
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/io/File;)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"  # Ljava/io/File;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/pm/UpdateAppsReceiver;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;
    .param p1, "x1"  # Ljava/util/List;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkPackageState(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[Ljava/io/File;
    .registers 1

    .line 49
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602([Ljava/io/File;)[Ljava/io/File;
    .registers 1
    .param p0, "x0"  # [Ljava/io/File;

    .line 49
    sput-object p0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$700()I
    .registers 1

    .line 49
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return v0
.end method

.method static synthetic access$702(I)I
    .registers 1
    .param p0, "x0"  # I

    .line 49
    sput p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UpdateAppsReceiver;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UpdateAppsReceiver;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/UpdateAppsReceiver;

    .line 49
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->updateInstallReady()V

    return-void
.end method

.method private checkAppsOp(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 382
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 384
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_c} :catch_e

    move-object v1, v2

    .line 387
    goto :goto_12

    .line 385
    :catch_e
    move-exception v2

    .line 386
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 388
    .end local v2  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_12
    if-eqz v1, :cond_20

    .line 389
    const/16 v4, 0x18

    iget-object v5, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/UpdateAppsReceiver;->setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V

    .line 392
    :cond_20
    return-void
.end method

.method private checkAppsPermission(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 396
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 398
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_e

    move-object v1, v3

    .line 401
    goto :goto_12

    .line 399
    :catch_e
    move-exception v3

    .line 400
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 402
    .end local v3  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_12
    if-eqz v1, :cond_2f

    .line 403
    const/4 v3, 0x0

    .line 405
    .local v3, "serv":Landroid/content/pm/ServiceInfo;
    :try_start_15
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-object v3, v4

    .line 407
    goto :goto_1e

    .line 406
    :catch_1d
    move-exception v4

    .line 408
    :goto_1e
    if-eqz v3, :cond_27

    .line 409
    sget-object v4, Lcom/android/server/pm/UpdateAppsReceiver;->limitServiceComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_2f

    .line 412
    :cond_27
    const-string v2, "UpdateAppsReceiver"

    const-string/jumbo v4, "service info is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v3  # "serv":Landroid/content/pm/ServiceInfo;
    :cond_2f
    :goto_2f
    return-void
.end method

.method private checkDefaultOpForBootCompleted(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 164
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->getFirstBootAlreadyOfOp()Z

    move-result v0

    if-nez v0, :cond_f

    .line 165
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->setFirstBootAlreadyForOp()V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    .line 169
    :cond_f
    return-void
.end method

.method private checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsOp(Landroid/content/Context;)V

    goto :goto_17

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->limitPackageName2:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkAppsPermission(Landroid/content/Context;)V

    .line 177
    :cond_17
    :goto_17
    return-void
.end method

.method private checkPackageState(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 367
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 369
    .local v2, "apkFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 370
    goto :goto_9

    .line 372
    :cond_1c
    sget-object v3, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 373
    .local v3, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_2c

    .line 374
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    .end local v2  # "apkFile":Ljava/io/File;
    .end local v3  # "pkInfo":Landroid/content/pm/PackageInfo;
    :cond_2c
    goto :goto_9

    .line 377
    :cond_2d
    return-object v0
.end method

.method private isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "apkFile"  # Ljava/io/File;

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 304
    return-object v1

    .line 306
    :cond_8
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 308
    .local v0, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1b

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1a

    goto :goto_1b

    .line 311
    :cond_1a
    return-object v0

    .line 309
    :cond_1b
    :goto_1b
    return-object v1
.end method

.method private readXml()V
    .registers 10

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 464
    iput-boolean v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 466
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string/jumbo v2, "system/updateapps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 468
    .local v0, "newxmlfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 469
    return-void

    .line 471
    :cond_16
    const/4 v1, 0x0

    .line 473
    .local v1, "str":Ljava/io/FileInputStream;
    :try_start_17
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 474
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 475
    .local v2, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 476
    .local v3, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 478
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 480
    .local v4, "eventType":I
    :goto_2e
    const/4 v5, 0x1

    if-eq v4, v5, :cond_71

    .line 481
    if-eqz v4, :cond_6a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_37

    goto :goto_6b

    .line 485
    :cond_37
    const-string v5, "UpdateApps"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_41} :catch_75

    const-string/jumbo v6, "value"

    const/4 v7, 0x0

    if-eqz v5, :cond_52

    .line 486
    :try_start_47
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .end local v5  # "value":Ljava/lang/String;
    goto :goto_69

    .line 488
    :cond_52
    const-string v5, "DefaultOp"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 489
    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    .restart local v5  # "value":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    goto :goto_6b

    .line 488
    .end local v5  # "value":Ljava/lang/String;
    :cond_69
    :goto_69
    goto :goto_6b

    .line 483
    :cond_6a
    nop

    .line 494
    :goto_6b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_2e

    .line 496
    :cond_71
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_74} :catch_75

    .line 499
    .end local v2  # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3  # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4  # "eventType":I
    goto :goto_79

    .line 497
    :catch_75
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_79
    return-void
.end method

.method private scanAllFiles(Ljava/io/File;)Ljava/util/List;
    .registers 10
    .param p1, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 181
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_5b

    .line 182
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_5b

    aget-object v3, v0, v2

    .line 183
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 184
    invoke-direct {p0, v3}, Lcom/android/server/pm/UpdateAppsReceiver;->scanAllFiles(Ljava/io/File;)Ljava/util/List;

    goto :goto_58

    .line 186
    :cond_16
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, "lastDot":I
    if-gez v4, :cond_23

    .line 188
    goto :goto_58

    .line 190
    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 190
    const-string v6, "APK"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 192
    .local v5, "isApk":Z
    if-eqz v5, :cond_58

    .line 193
    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UpdateAppsReceiver"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v3  # "f":Ljava/io/File;
    .end local v4  # "lastDot":I
    .end local v5  # "isApk":Z
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 199
    :cond_5b
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->resultList:Ljava/util/List;

    return-object v1
.end method

.method private setAppOpsPermission(Landroid/content/Context;ILjava/lang/String;II)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "op"  # I
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "uid"  # I
    .param p5, "mode"  # I

    .line 419
    nop

    .line 420
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 421
    .local v0, "mAppOps":Landroid/app/AppOpsManager;
    invoke-virtual {v0, p2, p4, p3, p5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 422
    return-void
.end method

.method private udpateInstallComplete()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method private updateCustomAppsIfNeeded(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/server/pm/UpdateAppsReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UpdateAppsReceiver$1;-><init>(Lcom/android/server/pm/UpdateAppsReceiver;)V

    .line 160
    invoke-virtual {v0}, Lcom/android/server/pm/UpdateAppsReceiver$1;->start()V

    .line 161
    return-void
.end method

.method private updateInstallFailed(I)V
    .registers 4
    .param p1, "returnCode"  # I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInstallFailed: returnCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateAppsReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method

.method private updateInstallReady()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 225
    return-void
.end method

.method private updateInstallStart()V
    .registers 9

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInstallStart :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLenght :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mPm:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mMediaShared : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateAppsReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    if-eqz v0, :cond_13e

    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    sget v1, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    if-ge v0, v1, :cond_13e

    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_51

    goto/16 :goto_13e

    .line 233
    :cond_51
    sget-boolean v0, Lcom/android/server/pm/UpdateAppsReceiver;->mMediaShared:Z

    if-eqz v0, :cond_56

    .line 234
    return-void

    .line 235
    :cond_56
    monitor-enter p0

    .line 236
    :try_start_57
    sget-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mUpdateInstallApks:[Ljava/io/File;

    sget v1, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    .line 237
    sget v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    .line 238
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "packageURI":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->isValidApk(Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 241
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .line 242
    .local v3, "installFlags":I
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInstallStart :  mInstallApk.getPath() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v4, 0x0

    const/16 v5, 0x68

    if-eqz v2, :cond_12a

    .line 244
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/UpdateAppsReceiver;->isPackageAlreadyInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 246
    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 247
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 246
    invoke-virtual {v7, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    monitor-exit p0

    return-void

    .line 250
    :cond_be
    const-string v4, "UpdateAppsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInstallStart :  pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  NSTALL_REPLACE_EXISTING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    or-int/lit8 v3, v3, 0x2

    .line 254
    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/pm/UpdateAppsReceiver;->mLenght:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "installNumber":Ljava/lang/String;
    const-string v5, "UpdateAppsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start install apk: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/pm/UpdateAppsReceiver;->mInstallApk:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    nop

    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "packageURI":Landroid/net/Uri;
    .end local v2  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3  # "installFlags":I
    .end local v4  # "installNumber":Ljava/lang/String;
    monitor-exit p0

    .line 267
    return-void

    .line 256
    .restart local v0  # "file":Ljava/io/File;
    .restart local v1  # "packageURI":Landroid/net/Uri;
    .restart local v2  # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3  # "installFlags":I
    :cond_12a
    iget-object v6, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mHandler:Landroid/os/Handler;

    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 256
    invoke-virtual {v7, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    monitor-exit p0

    return-void

    .line 266
    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "packageURI":Landroid/net/Uri;
    .end local v2  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3  # "installFlags":I
    :catchall_13b
    move-exception v0

    monitor-exit p0
    :try_end_13d
    .catchall {:try_start_57 .. :try_end_13d} :catchall_13b

    throw v0

    .line 231
    :cond_13e
    :goto_13e
    return-void
.end method


# virtual methods
.method public getFirstBootAlreadyOfOp()Z
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 354
    iget-boolean v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    monitor-exit v0

    return v1

    .line 355
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getFirstBootAlreadyOfUpdate()Z
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 339
    iget-boolean v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    monitor-exit v0

    return v1

    .line 340
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public isPackageAlreadyInstalled(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "versionCode"  # I

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledListSize:I

    if-ge v0, v1, :cond_5f

    .line 280
    sget-object v1, Lcom/android/server/pm/UpdateAppsReceiver;->mInstalledList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 281
    .local v1, "tmp":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPackageAlreadyInstalled :  pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " versionCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " versionName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newVersionCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateAppsReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/FlymePackageManager;->getPackageInfoForVersion(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 293
    .local v2, "mPackInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_5c

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, p2, :cond_5c

    .line 294
    const/4 v3, 0x1

    return v3

    .line 279
    .end local v2  # "mPackInfo":Landroid/content/pm/PackageInfo;
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v0  # "i":I
    .end local v1  # "tmp":Landroid/content/pm/PackageInfo;
    :cond_5f
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UpdateAppsReceiver;->mPm:Landroid/content/pm/PackageManager;

    .line 89
    invoke-static {p1}, Landroid/content/pm/FlymePackageManager;->getInstance(Landroid/content/Context;)Landroid/content/pm/FlymePackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->updateCustomAppsIfNeeded(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForBootCompleted(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->uninstallGmsAsync()V

    goto :goto_3e

    .line 94
    :cond_22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UpdateAppsReceiver;->checkDefaultOpForPackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mFpm:Landroid/content/pm/FlymePackageManager;

    invoke-static {v1, v0}, Lcom/android/server/pm/UpdateAppsReceiver$GmsManager;->updateGmsPermissionsIfNeeeded(Landroid/content/pm/FlymePackageManager;Ljava/lang/String;)V

    .line 99
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_3e
    :goto_3e
    return-void
.end method

.method public setFirstBootAlreadyForOp()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setFirstBootAlreadyForUpdate()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/UpdateAppsReceiver;->mLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->readXml()V

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/server/pm/UpdateAppsReceiver;->writeXml()V

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public writeXml()V
    .registers 10

    .line 430
    const-string v0, "DefaultOp"

    const-string/jumbo v1, "value"

    const-string v2, "UpdateApps"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UpdateAppsReceiver;->dataDir:Ljava/io/File;

    const-string/jumbo v5, "system/updateapps.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .local v3, "newxmlfile":Ljava/io/File;
    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 433
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 436
    :cond_1a
    goto :goto_1f

    .line 434
    :catch_1b
    move-exception v4

    .line 435
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 439
    .end local v4  # "e":Ljava/io/IOException;
    :goto_1f
    :try_start_1f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 440
    .local v4, "fstr":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 441
    .local v5, "out":Ljava/io/BufferedOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 442
    .local v6, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 443
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 445
    invoke-interface {v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    iget-boolean v7, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyUpdateApps:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    invoke-interface {v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    iget-boolean v2, p0, Lcom/android/server/pm/UpdateAppsReceiver;->firstBootAlreadyDefaultOp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v8, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    invoke-interface {v6, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 454
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 455
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 456
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_67} :catch_68

    .line 459
    .end local v4  # "fstr":Ljava/io/FileOutputStream;
    .end local v5  # "out":Ljava/io/BufferedOutputStream;
    .end local v6  # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_6c

    .line 457
    :catch_68
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 460
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_6c
    return-void
.end method
