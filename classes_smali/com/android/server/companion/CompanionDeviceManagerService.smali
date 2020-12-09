.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;,
        Lcom/android/server/companion/CompanionDeviceManagerService$Association;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

.field private static final XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"


# instance fields
.field private mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field private mCallingPackage:Ljava/lang/String;

.field private mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field private mIdleController:Landroid/os/IDeviceIdleController;

.field private final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUidToStorage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 105
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".DeviceDiscoveryService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 119
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 128
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 132
    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {p1, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 133
    nop

    .line 134
    const-string p1, "deviceidle"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    .line 135
    nop

    .line 136
    const-string p1, "appops"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 135
    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 137
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 103
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .registers 2

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .line 103
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/content/ComponentName;
    .registers 1

    .line 103
    sget-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 191
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/companion/IFindDeviceCallback;

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 193
    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 502
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .registers 5

    .line 385
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 424
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method private static getCallingUserId()I
    .registers 1

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 507
    sget-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    .line 517
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 507
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object p1

    .line 507
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method private getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .registers 2

    .line 428
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/AtomicFile;

    return-object p1
.end method

.method private static isCallerSystem()Z
    .registers 2

    .line 378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$getPackageInfo$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/PackageInfo;
    .registers 4

    .line 509
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x5000

    .line 512
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 509
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    .line 513
    :catch_f
    move-exception p0

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to get PackageInfo for package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CompanionDeviceManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getStorageFileForUser$5(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 4

    .line 580
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 582
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v2, "companion_device_manager_associations.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 580
    return-object v0
.end method

.method public static synthetic lambda$pG_kG2extKjHVEAFcCd4MLP2mkk(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method static synthetic lambda$updateAssociations$3(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 558
    const-string v0, "association"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 559
    const-string/jumbo v3, "package"

    invoke-interface {p0, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 560
    const-string v2, "device"

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    .line 561
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    return-void
.end method

.method static synthetic lambda$updateAssociations$4(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .registers 5

    .line 550
    const-string v0, "associations"

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 552
    :try_start_6
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 553
    const-string p1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 554
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 555
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    new-instance p1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;

    invoke-direct {p1, v1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 564
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_30

    .line 569
    nop

    .line 571
    return-void

    .line 566
    :catch_30
    move-exception p0

    .line 567
    const-string p1, "CompanionDeviceManagerService"

    const-string v0, "Error while writing associations file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static synthetic lambda$wnUkAY8uXyjMGM59-bNpzLLMJ1I(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private readAllAssociations(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private readAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return-object v2

    .line 597
    :cond_10
    nop

    .line 598
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 599
    monitor-enter v0

    .line 600
    :try_start_16
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_7c
    .catchall {:try_start_16 .. :try_end_1a} :catchall_7a

    .line 601
    :try_start_1a
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v2

    .line 603
    :cond_24
    :goto_24
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_64

    .line 604
    const/4 v6, 0x2

    if-eq v5, v6, :cond_3b

    const-string v5, "associations"

    .line 605
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_24

    .line 607
    :cond_3b
    const-string/jumbo v5, "package"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 608
    const-string v5, "device"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 610
    if-eqz v10, :cond_24

    if-nez v9, :cond_4d

    goto :goto_24

    .line 611
    :cond_4d
    if-eqz p2, :cond_56

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_24

    .line 613
    :cond_56
    new-instance v5, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v11, 0x0

    move-object v6, v5

    move-object v7, p0

    move v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_6c

    .line 615
    goto :goto_24

    .line 616
    :cond_64
    nop

    .line 617
    if-eqz v3, :cond_6a

    :try_start_67
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_7c
    .catchall {:try_start_67 .. :try_end_6a} :catchall_7a

    :cond_6a
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_7a

    .line 616
    return-object v4

    .line 600
    :catchall_6c
    move-exception p1

    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 617
    :catchall_6e
    move-exception p2

    if-eqz v3, :cond_79

    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v1

    :try_start_76
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p2
    :try_end_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_7a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7a} :catch_7c
    .catchall {:try_start_76 .. :try_end_7a} :catchall_7a

    .line 621
    :catchall_7a
    move-exception p1

    goto :goto_86

    .line 617
    :catch_7c
    move-exception p1

    .line 618
    :try_start_7d
    const-string p2, "CompanionDeviceManagerService"

    const-string v1, "Error while reading associations file"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    monitor-exit v0

    return-object v2

    .line 621
    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_7a

    throw p1
.end method

.method private recordAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 525
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    .line 526
    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 528
    return-void
.end method

.method private registerPackageMonitor()V
    .registers 6

    .line 141
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 159
    return-void
.end method

.method private unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 3

    .line 213
    if-eqz p1, :cond_9

    .line 214
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 216
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method private static unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            "I)TT;"
        }
    .end annotation

    .line 204
    if-eqz p0, :cond_9

    .line 205
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 207
    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateAssociations(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;)V"
        }
    .end annotation

    .line 531
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 532
    return-void
.end method

.method private updateAssociations(Ljava/util/function/Function;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;I)V"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 537
    monitor-enter v0

    .line 538
    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 539
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 540
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 541
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-ne v1, v2, :cond_1f

    monitor-exit v0

    return-void

    .line 543
    :cond_1f
    nop

    .line 544
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 545
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 546
    iget-object v3, v3, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    goto :goto_29

    .line 549
    :cond_3b
    new-instance v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;

    invoke-direct {v2, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 572
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 574
    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 575
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    throw p1
.end method

.method private updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V
    .registers 6

    .line 476
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 479
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_1b

    .line 481
    :cond_14
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 485
    :goto_1b
    goto :goto_1d

    .line 483
    :catch_1c
    move-exception v0

    .line 487
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 488
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3a

    .line 491
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_41

    .line 495
    :cond_3a
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, p1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 499
    :goto_41
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V
    .registers 3

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 466
    if-nez p1, :cond_7

    .line 467
    return-void

    .line 470
    :cond_7
    sget-object p2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    invoke-static {p2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 471
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 470
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 472
    return-void
.end method


# virtual methods
.method addAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 455
    invoke-direct {p0, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    .line 456
    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 185
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public synthetic lambda$recordAssociation$2$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 12

    .line 526
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$removeAssociation$0$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 12

    .line 460
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    const-string v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 164
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_36

    .line 172
    :cond_d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    .line 174
    iget-object v2, v2, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_16

    .line 176
    :cond_28
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 178
    if-eqz v0, :cond_35

    .line 179
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setCompanionAppPackages(ILjava/util/Set;)V

    .line 181
    :cond_35
    return-void

    .line 170
    :cond_36
    :goto_36
    return-void
.end method

.method removeAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 460
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 462
    return-void
.end method
