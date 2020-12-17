.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ManagedServices$Config;,
        Lcom/android/server/notification/ManagedServices$UserProfiles;,
        Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    }
.end annotation


# static fields
.field static final APPROVAL_BY_COMPONENT:I = 0x1

.field static final APPROVAL_BY_PACKAGE:I = 0x0

.field static final ATT_APPROVED_LIST:Ljava/lang/String; = "approved"

.field static final ATT_IS_PRIMARY:Ljava/lang/String; = "primary"

.field static final ATT_USER_ID:Ljava/lang/String; = "user"

.field static final ATT_VERSION:Ljava/lang/String; = "version"

.field static final DB_VERSION:I = 0x1

.field protected static final ENABLED_SERVICES_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ON_BINDING_DIED_REBIND_DELAY_MS:I = 0x2710

.field static final TAG_MANAGED_SERVICES:Ljava/lang/String; = "service_listing"


# instance fields
.field protected final DEBUG:Z

.field protected final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field protected mApprovalLevel:I

.field private mApproved:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field protected final mContext:Landroid/content/Context;

.field private mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledServicesPackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field protected final mMutex:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesBound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServicesRebinding:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSnoozingForCurrentProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUm:Landroid/os/UserManager;

.field private mUseXml:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mutex"  # Ljava/lang/Object;
    .param p3, "userProfiles"  # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "pm"  # Landroid/content/pm/IPackageManager;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 139
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 159
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 161
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 162
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 165
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 168
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mActivityManager:Landroid/app/ActivityManager;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"  # Landroid/os/IInterface;
    .param p2, "x2"  # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"  # Landroid/os/IInterface;
    .param p2, "x2"  # Landroid/content/ComponentName;
    .param p3, "x3"  # I
    .param p4, "x4"  # Z
    .param p5, "x5"  # Landroid/content/ServiceConnection;
    .param p6, "x6"  # I

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ManagedServices;Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"  # Landroid/content/ServiceConnection;
    .param p2, "x2"  # Landroid/content/ComponentName;
    .param p3, "x3"  # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ManagedServices;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;
    .param p1, "x1"  # Landroid/content/ComponentName;
    .param p2, "x2"  # I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/ManagedServices;

    .line 93
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method private bindToServices(Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 1024
    .local p1, "componentsToBind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c2

    .line 1025
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1026
    .local v1, "userId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1027
    .local v2, "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_be

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1029
    .local v4, "component":Landroid/content/ComponentName;
    :try_start_21
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    const/high16 v6, 0xc0000

    invoke-interface {v5, v4, v6, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_b8

    .line 1032
    .local v5, "info":Landroid/content/pm/ServiceInfo;
    const-string v6, " service "

    const-string v7, "Not binding "

    if-nez v5, :cond_53

    .line 1033
    :try_start_2f
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": service not found"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    goto :goto_15

    .line 1037
    :cond_53
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 1038
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": it does not require the permission "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    goto :goto_15

    .line 1042
    :cond_8a
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1042
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-direct {p0, v4, v1}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_b7} :catch_b8

    .line 1047
    .end local v5  # "info":Landroid/content/pm/ServiceInfo;
    goto :goto_bc

    .line 1045
    :catch_b8
    move-exception v5

    .line 1046
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1048
    .end local v4  # "component":Landroid/content/ComponentName;
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_bc
    goto/16 :goto_15

    .line 1024
    .end local v1  # "userId":I
    .end local v2  # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1050
    .end local v0  # "i":I
    :cond_c2
    return-void
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .registers 5
    .param p1, "service"  # Landroid/os/IInterface;

    .line 1256
    if-eqz p1, :cond_3

    .line 1259
    return-void

    .line 1257
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApprovedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgOrComponent"  # Ljava/lang/String;

    .line 505
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 506
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 507
    return-object p1

    .line 509
    :cond_c
    const/4 v0, 0x0

    return-object v0

    .line 511
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaption()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 8
    .param p1, "service"  # Landroid/os/IInterface;

    .line 643
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 644
    return-object v0

    .line 646
    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 647
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 648
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 649
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 650
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_22

    return-object v4

    .line 648
    .end local v4  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 652
    .end local v3  # "i":I
    :cond_25
    return-object v0
.end method

.method private hasMatchingServices(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageOrComponent"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 885
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 889
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_17
    return v1
.end method

.method private loadAllowedComponentsFromSettings()V
    .registers 7

    .line 432
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 433
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 434
    .local v2, "cr":Landroid/content/ContentResolver;
    nop

    .line 436
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 434
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 438
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 439
    nop

    .line 441
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 439
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 444
    .end local v1  # "user":Landroid/content/pm/UserInfo;
    .end local v2  # "cr":Landroid/content/ContentResolver;
    :cond_4e
    goto :goto_a

    .line 445
    :cond_4f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "Done loading approved values from settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method private loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;
    .registers 8
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 753
    .local p1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 755
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 756
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 757
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 758
    .local v2, "packageOrComponent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 759
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 760
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_2f

    .line 761
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 763
    :cond_2f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 756
    .end local v2  # "packageOrComponent":Ljava/lang/String;
    .end local v3  # "component":Landroid/content/ComponentName;
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 767
    .end local v1  # "i":I
    :cond_39
    return-object v0

    .line 754
    .end local v0  # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_3a
    :goto_3a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 16
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "userId"  # I
    .param p4, "isSystem"  # Z
    .param p5, "connection"  # Landroid/content/ServiceConnection;
    .param p6, "targetSdkVersion"  # I

    .line 200
    new-instance v8, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;-><init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V

    return-object v8
.end method

.method private registerService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I

    .line 1056
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    .line 1058
    monitor-exit v0

    .line 1059
    return-void

    .line 1058
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "userid"  # I

    .line 1263
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1265
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method private registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1269
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1272
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_16
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 1273
    :try_start_12
    monitor-exit v0

    return-object p1

    .line 1277
    :catchall_14
    move-exception v1

    goto :goto_1a

    .line 1274
    :catch_16
    move-exception v1

    .line 1277
    monitor-exit v0

    .line 1278
    const/4 v0, 0x0

    return-object v0

    .line 1277
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_14

    throw v1
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;I)V
    .registers 4
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I

    .line 1071
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 1072
    return-void
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;IZ)V
    .registers 21
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I
    .param p3, "isSystem"  # Z

    .line 1076
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const-string v10, " service: "

    const-string v11, "Unable to bind "

    iget-boolean v0, v7, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_2d

    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_2d
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    .line 1079
    .local v12, "servicesBindingTag":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1080
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already bound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void

    .line 1084
    :cond_59
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1087
    .local v13, "N":I
    add-int/lit8 v0, v13, -0x1

    .local v0, "i":I
    :goto_66
    if-ltz v0, :cond_b3

    .line 1088
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1089
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    iget v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v2, v9, :cond_b0

    .line 1092
    iget-object v2, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    disconnecting old "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-direct {v7, v0}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1094
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_b0

    .line 1095
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {v7, v2, v3, v4}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1087
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_b0
    add-int/lit8 v0, v0, -0x1

    goto :goto_66

    .line 1100
    .end local v0  # "i":I
    :cond_b3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 1101
    .local v14, "intent":Landroid/content/Intent;
    invoke-virtual {v14, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v0, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    const-string v1, "android.intent.extra.client_label"

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1105
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v7, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1107
    .local v15, "pendingIntent":Landroid/app/PendingIntent;
    const-string v0, "android.intent.extra.client_intent"

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1109
    const/4 v1, 0x0

    .line 1111
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_df
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1111
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_ed
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_df .. :try_end_ed} :catch_f0

    move-object v1, v0

    .line 1115
    move-object v5, v1

    goto :goto_f2

    .line 1113
    :catch_f0
    move-exception v0

    move-object v5, v1

    .line 1117
    .end local v1  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_f2
    if-eqz v5, :cond_f7

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_f8

    :cond_f7
    const/4 v0, 0x1

    :goto_f8
    move v6, v0

    .line 1120
    .local v6, "targetSdkVersion":I
    :try_start_f9
    iget-object v0, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Lcom/android/server/notification/ManagedServices$1;
    :try_end_111
    .catch Ljava/lang/SecurityException; {:try_start_f9 .. :try_end_111} :catch_15e

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object v4, v12

    move-object/from16 v16, v5

    .end local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v5, p3

    :try_start_11b
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZI)V

    .line 1186
    .local v0, "serviceConnection":Landroid/content/ServiceConnection;
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getBindFlags()I

    move-result v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 1186
    invoke-virtual {v1, v14, v0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_15b

    .line 1190
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1191
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15a
    .catch Ljava/lang/SecurityException; {:try_start_11b .. :try_end_15a} :catch_15c

    .line 1193
    return-void

    .line 1198
    .end local v0  # "serviceConnection":Landroid/content/ServiceConnection;
    :cond_15b
    goto :goto_184

    .line 1195
    :catch_15c
    move-exception v0

    goto :goto_161

    .end local v16  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_15e
    move-exception v0

    move-object/from16 v16, v5

    .line 1196
    .end local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "ex":Ljava/lang/SecurityException;
    .restart local v16  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_161
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1197
    iget-object v1, v7, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1199
    .end local v0  # "ex":Ljava/lang/SecurityException;
    :goto_184
    return-void
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "userid"  # I

    .line 1234
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeServiceImpl service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_23
    const/4 v0, 0x0

    .line 1236
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1237
    :try_start_27
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1238
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2f
    if-ltz v3, :cond_69

    .line 1239
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1240
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_66

    iget v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v5, p2, :cond_66

    .line 1241
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing active service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0, v3}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v5

    move-object v0, v5

    .line 1238
    .end local v4  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 1245
    .end local v2  # "N":I
    .end local v3  # "i":I
    :cond_69
    monitor-exit v1

    .line 1246
    return-object v0

    .line 1245
    :catchall_6b
    move-exception v2

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_27 .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3
    .param p1, "i"  # I

    .line 1250
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1251
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1252
    return-object v0
.end method

.method private removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z
    .registers 15
    .param p1, "uninstalledUserId"  # I
    .param p2, "pkg"  # Ljava/lang/String;

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 850
    .local v1, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_5c

    .line 851
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 852
    .local v2, "M":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_14
    if-ge v3, v2, :cond_5c

    .line 853
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 854
    .local v4, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 855
    .local v5, "O":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "k":I
    :goto_22
    if-ltz v6, :cond_59

    .line 856
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 857
    .local v7, "packageOrComponent":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 858
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {p2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 859
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 860
    iget-boolean v9, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v9, :cond_56

    .line 861
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from approved list; uninstalled"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    .end local v7  # "packageOrComponent":Ljava/lang/String;
    .end local v8  # "packageName":Ljava/lang/String;
    :cond_56
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 852
    .end local v4  # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5  # "O":I
    .end local v6  # "k":I
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 868
    .end local v2  # "M":I
    .end local v3  # "j":I
    :cond_5c
    return v0
.end method

.method private trimApprovedListsAccordingToInstalledServices(I)V
    .registers 10
    .param p1, "userId"  # I

    .line 825
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 826
    .local v0, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_f

    .line 827
    return-void

    .line 829
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    .line 830
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 831
    .local v2, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_22
    if-ltz v3, :cond_71

    .line 832
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 833
    .local v4, "approvedPackageOrComponent":Ljava/lang/String;
    invoke-virtual {p0, v4, p1}, Lcom/android/server/notification/ManagedServices;->isValidEntry(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 834
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 835
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from approved list; no matching services found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 838
    :cond_4f
    iget-boolean v5, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v5, :cond_6e

    .line 839
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keeping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " on approved list; matching services found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v4  # "approvedPackageOrComponent":Ljava/lang/String;
    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    .line 829
    .end local v2  # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "j":I
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 845
    .end local v1  # "i":I
    :cond_74
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 8
    .param p1, "connection"  # Landroid/content/ServiceConnection;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "userId"  # I

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1296
    goto :goto_29

    .line 1294
    :catch_6
    move-exception v0

    .line 1295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " could not be unbound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :goto_29
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1298
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1299
    monitor-exit v0

    .line 1300
    return-void

    .line 1299
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I

    .line 1210
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 1212
    monitor-exit v0

    .line 1213
    return-void

    .line 1212
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 7
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "userid"  # I

    .line 1285
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1286
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_19

    invoke-virtual {v0, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1287
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1289
    :cond_19
    return-void
.end method

.method private unregisterServiceLocked(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I

    .line 1216
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1217
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_31

    .line 1218
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1219
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v3, p2, :cond_2e

    .line 1220
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1221
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_2e

    .line 1222
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v5, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1217
    .end local v2  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1226
    .end local v1  # "i":I
    :cond_31
    return-void
.end method


# virtual methods
.method protected addApprovedList(Ljava/lang/String;IZ)V
    .registers 11
    .param p1, "approved"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "isPrimary"  # Z

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 450
    const-string p1, ""

    .line 452
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 453
    .local v0, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_25

    .line 454
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 455
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_25
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 459
    .local v1, "approvedList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_3e

    .line 460
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 461
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :cond_3e
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "approvedArray":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v3, :cond_56

    aget-object v5, v2, v4

    .line 466
    .local v5, "pkgOrComponent":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, "approvedItem":Ljava/lang/String;
    if-eqz v6, :cond_53

    .line 468
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v5  # "pkgOrComponent":Ljava/lang/String;
    .end local v6  # "approvedItem":Ljava/lang/String;
    :cond_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 471
    :cond_56
    return-void
.end method

.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 6
    .param p1, "service"  # Landroid/os/IInterface;

    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 668
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 669
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_a

    .line 670
    return-object v0

    .line 672
    :cond_a
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call from unknown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract checkType(Landroid/os/IInterface;)Z
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 20
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x10900000001L

    invoke-virtual {v2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 252
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 253
    .local v4, "N":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    if-ge v0, v4, :cond_9f

    .line 254
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 255
    .local v5, "userId":I
    iget-object v6, v1, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 256
    .local v6, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v6, :cond_9a

    .line 257
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 258
    .local v7, "M":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_36
    if-ge v8, v7, :cond_96

    .line 259
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 260
    .local v9, "isPrimary":Z
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 261
    .local v10, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_8d

    .line 262
    const-wide v11, 0x20b00000002L

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 263
    .local v11, "sToken":J
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_76

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 264
    .local v14, "s":Ljava/lang/String;
    move-object v15, v6

    move/from16 v16, v7

    .end local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7  # "M":I
    .local v15, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v16, "M":I
    const-wide v6, 0x20900000001L

    invoke-virtual {v2, v6, v7, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 265
    .end local v14  # "s":Ljava/lang/String;
    move-object v6, v15

    move/from16 v7, v16

    goto :goto_5b

    .line 266
    .end local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16  # "M":I
    .restart local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7  # "M":I
    :cond_76
    move-object v15, v6

    move/from16 v16, v7

    .end local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7  # "M":I
    .restart local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16  # "M":I
    const-wide v6, 0x10500000002L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 267
    const-wide v6, 0x10800000003L

    invoke-virtual {v2, v6, v7, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 268
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_90

    .line 261
    .end local v11  # "sToken":J
    .end local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16  # "M":I
    .restart local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7  # "M":I
    :cond_8d
    move-object v15, v6

    move/from16 v16, v7

    .line 258
    .end local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7  # "M":I
    .end local v9  # "isPrimary":Z
    .end local v10  # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16  # "M":I
    :goto_90
    add-int/lit8 v8, v8, 0x1

    move-object v6, v15

    move/from16 v7, v16

    goto :goto_36

    .end local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16  # "M":I
    .restart local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v7  # "M":I
    :cond_96
    move-object v15, v6

    move/from16 v16, v7

    .end local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7  # "M":I
    .restart local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v16  # "M":I
    goto :goto_9b

    .line 256
    .end local v8  # "j":I
    .end local v15  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v16  # "M":I
    .restart local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_9a
    move-object v15, v6

    .line 253
    .end local v5  # "userId":I
    .end local v6  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    .line 274
    .end local v0  # "i":I
    :cond_9f
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 275
    .local v5, "cmpt":Landroid/content/ComponentName;
    if-eqz v3, :cond_ba

    invoke-virtual {v3, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_ba

    goto :goto_a5

    .line 276
    :cond_ba
    const-wide v6, 0x20b00000003L

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 277
    .end local v5  # "cmpt":Landroid/content/ComponentName;
    goto :goto_a5

    .line 279
    :cond_c3
    iget-object v5, v1, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 280
    :try_start_c6
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 281
    .local v6, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v3, :cond_e3

    iget-object v7, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_e3

    goto :goto_cc

    .line 282
    :cond_e3
    const-wide v7, 0x20b00000004L

    invoke-virtual {v6, v2, v7, v8, v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    .line 283
    .end local v6  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_cc

    .line 284
    :cond_ec
    monitor-exit v5
    :try_end_ed
    .catchall {:try_start_c6 .. :try_end_ed} :catchall_109

    .line 286
    iget-object v0, v1, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_108

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 287
    .local v5, "name":Landroid/content/ComponentName;
    const-wide v6, 0x20b00000005L

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 288
    .end local v5  # "name":Landroid/content/ComponentName;
    goto :goto_f3

    .line 289
    :cond_108
    return-void

    .line 284
    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v5
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Allowed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 209
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_8f

    .line 210
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 211
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 212
    .local v3, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_8c

    .line 213
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 214
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_42
    if-ge v5, v4, :cond_8c

    .line 215
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 216
    .local v6, "isPrimary":Z
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 217
    .local v7, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_89

    .line 218
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-static {v9, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (user: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isPrimary: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    .end local v6  # "isPrimary":Z
    .end local v7  # "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 209
    .end local v2  # "userId":I
    .end local v3  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4  # "M":I
    .end local v5  # "j":I
    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 225
    .end local v1  # "i":I
    :cond_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    All "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") enabled for current profiles:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_eb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 228
    .local v2, "cmpt":Landroid/content/ComponentName;
    if-eqz p2, :cond_d6

    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_d6

    goto :goto_c1

    .line 229
    :cond_d6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .end local v2  # "cmpt":Landroid/content/ComponentName;
    goto :goto_c1

    .line 232
    :cond_eb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Live "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_11a
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_120
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 235
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_137

    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_137

    goto :goto_120

    .line 236
    :cond_137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    iget-boolean v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v5, :cond_161

    const-string v5, " SYSTEM"

    goto :goto_163

    :cond_161
    const-string v5, ""

    :goto_163
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v5

    if-eqz v5, :cond_16f

    const-string v5, " GUEST"

    goto :goto_171

    :cond_16f
    const-string v5, ""

    :goto_171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_120

    .line 241
    :cond_17c
    monitor-exit v1
    :try_end_17d
    .catchall {:try_start_11a .. :try_end_17d} :catchall_1d5

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Snoozed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 244
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 246
    .local v2, "name":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    .end local v2  # "name":Landroid/content/ComponentName;
    goto :goto_1af

    .line 248
    :cond_1d4
    return-void

    .line 241
    :catchall_1d5
    move-exception v2

    :try_start_1d6
    monitor-exit v1
    :try_end_1d7
    .catchall {:try_start_1d6 .. :try_end_1d7} :catchall_1d5

    throw v2
.end method

.method protected getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;
    .registers 11
    .param p1, "userIds"  # Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 894
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 895
    .local v0, "nUserIds":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 897
    .local v1, "componentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_4a

    .line 898
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 899
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 900
    .local v4, "approvedLists":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_47

    .line 901
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 902
    .local v5, "N":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_23
    if-ge v6, v5, :cond_47

    .line 903
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 904
    .local v7, "approvedByUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v7, :cond_36

    .line 905
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v7, v8

    .line 906
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 908
    :cond_36
    nop

    .line 909
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-direct {p0, v8, v3}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;

    move-result-object v8

    .line 908
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 902
    .end local v7  # "approvedByUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 897
    .end local v3  # "userId":I
    .end local v4  # "approvedLists":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v5  # "N":I
    .end local v6  # "j":I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 913
    .end local v2  # "i":I
    :cond_4a
    return-object v1
.end method

.method protected getAllowedComponents(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 526
    .local v1, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 527
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 528
    .local v3, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 529
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 530
    .local v5, "cn":Landroid/content/ComponentName;
    if-eqz v5, :cond_39

    .line 531
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v5  # "cn":Landroid/content/ComponentName;
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 526
    .end local v3  # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "j":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 535
    .end local v2  # "i":I
    :cond_3f
    return-object v0
.end method

.method protected getAllowedPackages(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v0, "allowedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 541
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 542
    .local v1, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 543
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 544
    .local v3, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_24
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_40

    .line 545
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 546
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 547
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v5  # "pkgName":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 542
    .end local v3  # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "j":I
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 551
    .end local v2  # "i":I
    :cond_43
    return-object v0
.end method

.method protected getAllowedPackages()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 809
    .local v0, "allowedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 810
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 811
    .local v2, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 812
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 813
    .local v4, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_24
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 814
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 815
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 816
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v6  # "pkgName":Ljava/lang/String;
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 811
    .end local v4  # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5  # "j":I
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 809
    .end local v2  # "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3  # "i":I
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 821
    .end local v1  # "k":I
    :cond_46
    return-object v0
.end method

.method protected getApproved(IZ)Ljava/lang/String;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "primary"  # Z

    .line 516
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 517
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 518
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 519
    .local v1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ":"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getBindFlags()I
    .registers 2

    .line 192
    const v0, 0x5000001

    return v0
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method protected getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageOrComponent"  # Ljava/lang/String;

    .line 872
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 873
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_b

    .line 874
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 876
    :cond_b
    return-object p1
.end method

.method protected getRemovableConnectedServices()Ljava/util/Set;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMutex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation

    .line 949
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 950
    .local v0, "removableBoundServices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 951
    .local v2, "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-nez v3, :cond_24

    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 952
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    .end local v2  # "service":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_24
    goto :goto_b

    .line 955
    :cond_25
    return-object v0
.end method

.method protected abstract getRequiredPermission()Ljava/lang/String;
.end method

.method protected getServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    monitor-exit v0

    return-object v1

    .line 188
    .end local v1  # "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method isBound(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "cn"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 1202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1203
    .local v0, "servicesBindingTag":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 1431
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isComponentEnabledForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPackageAllowed(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 567
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 568
    return v0

    .line 570
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 571
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 572
    .local v1, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 573
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 574
    .local v3, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 575
    .local v5, "allowedEntry":Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 576
    .local v6, "component":Landroid/content/ComponentName;
    const/4 v7, 0x1

    if-eqz v6, :cond_44

    .line 577
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 578
    return v7

    .line 581
    :cond_44
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 582
    return v7

    .line 585
    .end local v5  # "allowedEntry":Ljava/lang/String;
    .end local v6  # "component":Landroid/content/ComponentName;
    :cond_4b
    goto :goto_26

    .line 572
    .end local v3  # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 587
    .end local v2  # "i":I
    :cond_4f
    return v0
.end method

.method protected isPackageOrComponentAllowed(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgOrComponent"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 555
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 556
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 557
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 558
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 559
    .local v2, "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 560
    const/4 v3, 0x1

    return v3

    .line 557
    .end local v2  # "allowed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 563
    .end local v1  # "i":I
    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method public isSameUser(Landroid/os/IInterface;I)Z
    .registers 6
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "userId"  # I

    .line 677
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 678
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 680
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v1, :cond_12

    .line 681
    invoke-virtual {v1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 683
    :cond_12
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 684
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected isServiceTokenValidLocked(Landroid/os/IInterface;)Z
    .registers 4
    .param p1, "service"  # Landroid/os/IInterface;

    .line 656
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 657
    return v0

    .line 659
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 660
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v1, :cond_c

    .line 661
    const/4 v0, 0x1

    return v0

    .line 663
    :cond_c
    return v0
.end method

.method protected isValidEntry(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageOrComponent"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->hasMatchingServices(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected migrateToXml()V
    .registers 1

    .line 380
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 381
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    .line 204
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 13
    .param p1, "removingPackage"  # Z
    .param p2, "pkgList"  # [Ljava/lang/String;
    .param p3, "uidList"  # [I

    .line 591
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackagesChanged removingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pkgList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    if-nez p2, :cond_1d

    const/4 v2, 0x0

    goto :goto_21

    :cond_1d
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mEnabledServicesPackageNames="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_35
    if-eqz p2, :cond_8c

    array-length v0, p2

    if-lez v0, :cond_8c

    .line 596
    const/4 v0, 0x0

    .line 598
    .local v0, "anyServicesInvolved":Z
    if-eqz p1, :cond_57

    if-eqz p3, :cond_57

    .line 599
    array-length v1, p2

    array-length v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 600
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_46
    if-ge v2, v1, :cond_57

    .line 601
    aget-object v3, p2, v2

    .line 602
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p3, v2

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 603
    .local v4, "userId":I
    invoke-direct {p0, v4, v3}, Lcom/android/server/notification/ManagedServices;->removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z

    move-result v0

    .line 600
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 606
    .end local v1  # "size":I
    .end local v2  # "i":I
    :cond_57
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0  # "anyServicesInvolved":Z
    .local v3, "anyServicesInvolved":Z
    :goto_5b
    if-ge v0, v1, :cond_86

    aget-object v4, p2, v0

    .line 607
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 608
    const/4 v3, 0x1

    .line 610
    :cond_68
    if-eqz p3, :cond_83

    array-length v5, p3

    if-lez v5, :cond_83

    .line 611
    array-length v5, p3

    move v6, v3

    move v3, v2

    .end local v3  # "anyServicesInvolved":Z
    .local v6, "anyServicesInvolved":Z
    :goto_70
    if-ge v3, v5, :cond_82

    aget v7, p3, v3

    .line 612
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {p0, v4, v8}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 613
    const/4 v6, 0x1

    .line 611
    .end local v7  # "uid":I
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    :cond_82
    move v3, v6

    .line 606
    .end local v4  # "pkgName":Ljava/lang/String;
    .end local v6  # "anyServicesInvolved":Z
    .restart local v3  # "anyServicesInvolved":Z
    :cond_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 619
    :cond_86
    if-eqz v3, :cond_8c

    .line 621
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 624
    .end local v3  # "anyServicesInvolved":Z
    :cond_8c
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "removed"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 195
    return-void
.end method

.method protected onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "element"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;
    .param p3, "backupSdkInt"  # I
    .param p4, "userId"  # I

    .line 292
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    if-nez v0, :cond_76

    .line 293
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored managed service setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 297
    :cond_34
    const/16 v0, 0x1a

    if-ge p3, v0, :cond_66

    .line 300
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/android/server/notification/ManagedServices;->getApproved(IZ)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "currentSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 303
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 306
    :cond_65
    move-object p2, v0

    .line 310
    .end local v0  # "currentSetting":Ljava/lang/String;
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    invoke-static {v0, p1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 312
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 316
    :cond_76
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "user"  # I

    .line 627
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing approved services for removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 630
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 5
    .param p1, "user"  # I

    .line 633
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 635
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5
    .param p1, "user"  # I

    .line 638
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 640
    return-void
.end method

.method protected populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V
    .registers 13
    .param p2, "activeUsers"  # Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMutex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/util/IntArray;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 920
    .local p1, "componentsToBind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    .local p3, "approvedComponentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 921
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 922
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 924
    .local v0, "nUserIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_54

    .line 926
    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 927
    .local v2, "userId":I
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 928
    .local v3, "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-nez v3, :cond_26

    .line 929
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 930
    goto :goto_51

    .line 933
    :cond_26
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 934
    .local v4, "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 936
    invoke-virtual {p1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 938
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 940
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_39
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_51

    .line 941
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 942
    .local v6, "component":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 940
    .end local v6  # "component":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 924
    .end local v2  # "userId":I
    .end local v3  # "userComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v4  # "add":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v5  # "j":I
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 945
    .end local v1  # "i":I
    :cond_54
    return-void
.end method

.method protected populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 10
    .param p1, "forceRebind"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 963
    .local p2, "removableBoundServices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .local p3, "allowedComponentsToBind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    .local p4, "componentsToUnbind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 964
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 965
    .local v2, "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_3b

    .line 966
    if-nez p1, :cond_24

    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 967
    :cond_24
    iget v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 968
    invoke-virtual {p4, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 969
    .local v3, "toUnbind":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    iget v4, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p4, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 973
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2  # "allowedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3  # "toUnbind":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3b
    goto :goto_4

    .line 974
    :cond_3c
    return-void
.end method

.method protected queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "extraFlags"  # I
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 776
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 777
    .local v0, "installed":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 778
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v2, "queryIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 780
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    :cond_1d
    or-int/lit16 v3, p2, 0x84

    invoke-virtual {v1, v2, v3, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 786
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-boolean v4, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v4, :cond_44

    .line 787
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " services: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_44
    if-eqz v3, :cond_ab

    .line 789
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "count":I
    :goto_4b
    if-ge v4, v5, :cond_ab

    .line 790
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 791
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 793
    .local v7, "info":Landroid/content/pm/ServiceInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .local v8, "component":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a5

    .line 795
    iget-object v9, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v11, v11, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    goto :goto_a8

    .line 801
    :cond_a5
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    .end local v6  # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7  # "info":Landroid/content/pm/ServiceInfo;
    .end local v8  # "component":Landroid/content/ComponentName;
    :goto_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 804
    .end local v4  # "i":I
    .end local v5  # "count":I
    :cond_ab
    return-object v0
.end method

.method protected readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 4
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    return-void
.end method

.method protected readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V
    .registers 14
    .param p1, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "forRestore"  # Z
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/util/function/TriPredicate<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    .local p2, "allowedManagedServicePackages":Lcom/android/internal/util/function/TriPredicate;, "Lcom/android/internal/util/function/TriPredicate<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8b

    .line 392
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "tag":Ljava/lang/String;
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1d

    .line 394
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 395
    goto :goto_8b

    .line 397
    :cond_1d
    const/4 v4, 0x2

    if-ne v1, v4, :cond_89

    .line 398
    const-string/jumbo v4, "service_listing"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 399
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " permissions from xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v4, "approved"

    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "approved":Ljava/lang/String;
    if-eqz p3, :cond_52

    .line 404
    move v2, p4

    goto :goto_59

    :cond_52
    const-string/jumbo v5, "user"

    invoke-static {p1, v5, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 405
    .local v2, "resolvedUserId":I
    :goto_59
    nop

    .line 406
    const-string/jumbo v5, "primary"

    invoke-static {p1, v5, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    .line 407
    .local v5, "isPrimary":Z
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/notification/ManagedServices;->readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 408
    if-eqz p2, :cond_78

    .line 409
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRequiredPermission()Ljava/lang/String;

    move-result-object v8

    .line 408
    invoke-interface {p2, v6, v7, v8}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 410
    :cond_78
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_83

    .line 411
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 413
    :cond_83
    iput-boolean v3, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    .line 415
    .end local v2  # "resolvedUserId":I
    .end local v4  # "approved":Ljava/lang/String;
    .end local v5  # "isPrimary":Z
    :cond_85
    goto :goto_89

    .line 416
    :cond_86
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 419
    .end local v0  # "tag":Ljava/lang/String;
    :cond_89
    :goto_89
    goto/16 :goto_0

    .line 420
    :cond_8b
    :goto_8b
    const/4 v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 421
    return-void
.end method

.method protected rebindServices(ZI)V
    .registers 9
    .param p1, "forceRebind"  # Z
    .param p2, "userToRebind"  # I

    .line 981
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rebindServices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v0

    .line 983
    .local v0, "userIds":Landroid/util/IntArray;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_36

    .line 984
    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    move-object v0, v1

    .line 985
    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 988
    :cond_36
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 989
    .local v1, "componentsToBind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 991
    .local v2, "componentsToUnbind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 992
    nop

    .line 993
    :try_start_44
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v4

    .line 994
    .local v4, "approvedComponentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    move-result-object v5

    .line 998
    .local v5, "removableBoundServices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {p0, v1, v0, v4}, Lcom/android/server/notification/ManagedServices;->populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V

    .line 1002
    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/server/notification/ManagedServices;->populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1004
    .end local v4  # "approvedComponentsByUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Landroid/content/ComponentName;>;>;"
    .end local v5  # "removableBoundServices":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_5a

    .line 1006
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 1007
    invoke-direct {p0, v1}, Lcom/android/server/notification/ManagedServices;->bindToServices(Landroid/util/SparseArray;)V

    .line 1008
    return-void

    .line 1004
    :catchall_5a
    move-exception v4

    :try_start_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v4
.end method

.method protected registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "guest"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 707
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 708
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkType(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 714
    :cond_16
    return-void

    .line 709
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "userid"  # I

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 696
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 697
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v0, :cond_c

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 700
    :cond_c
    return-void
.end method

.method public registerSystemService(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "userid"  # I

    .line 1065
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 1067
    monitor-exit v0

    .line 1068
    return-void

    .line 1067
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method protected setComponentState(Landroid/content/ComponentName;Z)V
    .registers 11
    .param p1, "component"  # Landroid/content/ComponentName;
    .param p2, "enabled"  # Z

    .line 717
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 718
    .local v0, "previous":Z
    if-ne v0, p2, :cond_b

    .line 719
    return-void

    .line 722
    :cond_b
    if-eqz p2, :cond_13

    .line 723
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 725
    :cond_13
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 729
    :goto_18
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_24

    const-string v3, "Enabling "

    goto :goto_26

    :cond_24
    const-string v3, "Disabling "

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 733
    :try_start_3f
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v2

    .line 735
    .local v2, "userIds":Landroid/util/IntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_46
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_88

    .line 736
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 737
    .local v4, "userId":I
    if-eqz p2, :cond_82

    .line 738
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 739
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_67

    goto :goto_7e

    .line 742
    :cond_67
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " no longer has permission to be bound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 740
    :cond_7e
    :goto_7e
    invoke-direct {p0, p1, v4}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_85

    .line 745
    :cond_82
    invoke-direct {p0, p1, v4}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 735
    .end local v4  # "userId":I
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 748
    .end local v2  # "userIds":Landroid/util/IntArray;
    .end local v3  # "i":I
    :cond_88
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_8a
    move-exception v2

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_3f .. :try_end_8c} :catchall_8a

    throw v2
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .registers 9
    .param p1, "pkgOrComponent"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "isPrimary"  # Z
    .param p4, "enabled"  # Z

    .line 479
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    if-eqz p4, :cond_c

    const-string v2, " Allowing "

    goto :goto_e

    :cond_c
    const-string v2, "Disallowing "

    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 482
    .local v0, "allowedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-nez v0, :cond_44

    .line 483
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 484
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_44
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 487
    .local v1, "approved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_5d

    .line 488
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 489
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "approvedItem":Ljava/lang/String;
    if-eqz v2, :cond_6c

    .line 494
    if-eqz p4, :cond_69

    .line 495
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 497
    :cond_69
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 501
    :cond_6c
    :goto_6c
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 502
    return-void
.end method

.method protected unbindFromServices(Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 1011
    .local p1, "componentsToUnbind":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Landroid/content/ComponentName;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1012
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1013
    .local v1, "userId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1014
    .local v2, "removableComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1016
    .local v4, "cn":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disabling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-direct {p0, v4, v1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    .line 1018
    .end local v4  # "cn":Landroid/content/ComponentName;
    goto :goto_15

    .line 1011
    .end local v1  # "userId":I
    .end local v2  # "removableComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1020
    .end local v0  # "i":I
    :cond_52
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "service"  # Landroid/os/IInterface;
    .param p2, "userid"  # I

    .line 688
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 691
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 692
    return-void
.end method

.method protected writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    return-void
.end method

.method protected writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V
    .registers 20
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"  # Z
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 321
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "version"

    invoke-interface {v1, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-eqz p2, :cond_20

    .line 324
    invoke-direct {v0, v2}, Lcom/android/server/notification/ManagedServices;->trimApprovedListsAccordingToInstalledServices(I)V

    .line 327
    :cond_20
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 328
    .local v3, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    if-ge v5, v3, :cond_a1

    .line 329
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 330
    .local v6, "approvedUserId":I
    if-eqz p2, :cond_3a

    if-eq v6, v2, :cond_3a

    .line 331
    goto :goto_9e

    .line 333
    :cond_3a
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 334
    .local v7, "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_9e

    .line 335
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 336
    .local v8, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_49
    if-ge v9, v8, :cond_9e

    .line 337
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 338
    .local v10, "isPrimary":Z
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 339
    .local v11, "approved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_9b

    .line 340
    const-string v12, ":"

    invoke-static {v12, v11}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    .line 341
    .local v12, "allowedItems":Ljava/lang/String;
    const-string/jumbo v13, "service_listing"

    invoke-interface {v1, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    const-string v14, "approved"

    invoke-interface {v1, v4, v14, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "user"

    invoke-interface {v1, v4, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "primary"

    invoke-interface {v1, v4, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 345
    invoke-virtual {v0, v1, v6}, Lcom/android/server/notification/ManagedServices;->writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 346
    invoke-interface {v1, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 348
    if-nez p2, :cond_9b

    if-eqz v10, :cond_9b

    .line 350
    iget-object v13, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 350
    invoke-static {v13, v14, v12, v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 336
    .end local v10  # "isPrimary":Z
    .end local v11  # "approved":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12  # "allowedItems":Ljava/lang/String;
    :cond_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    .line 328
    .end local v6  # "approvedUserId":I
    .end local v7  # "approvedByType":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Boolean;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v8  # "M":I
    .end local v9  # "j":I
    :cond_9e
    :goto_9e
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 359
    .end local v5  # "i":I
    :cond_a1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    return-void
.end method
