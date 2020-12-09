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

    .line 153
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

    .line 154
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 157
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 158
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 159
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 160
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ManagedServices;)Ljava/lang/String;
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/notification/ManagedServices;Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/ManagedServices;Landroid/content/ComponentName;I)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/notification/ManagedServices;)Landroid/os/Handler;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ManagedServices;)Ljava/util/ArrayList;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method private bindToServices(Landroid/util/SparseArray;)V
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

    .line 1047
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c2

    .line 1048
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1049
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1050
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1052
    :try_start_21
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    const/high16 v5, 0xc0000

    invoke-interface {v4, v3, v5, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_b8

    .line 1055
    const-string v5, " service "

    const-string v6, "Not binding "

    if-nez v4, :cond_53

    .line 1056
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": service not found"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    goto :goto_15

    .line 1060
    :cond_53
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v7, v7, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1061
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    goto :goto_15

    .line 1065
    :cond_8a
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enabling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1065
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-direct {p0, v3, v1}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_b7} :catch_b8

    .line 1070
    goto :goto_bc

    .line 1068
    :catch_b8
    move-exception v3

    .line 1069
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1071
    :goto_bc
    goto/16 :goto_15

    .line 1047
    :cond_be
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1073
    :cond_c2
    return-void
.end method

.method private checkNotNull(Landroid/os/IInterface;)V
    .registers 4

    .line 1270
    if-eqz p1, :cond_3

    .line 1273
    return-void

    .line 1271
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getApprovedValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 507
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 508
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 509
    return-object p1

    .line 511
    :cond_c
    const/4 p1, 0x0

    return-object p1

    .line 513
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCaption()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    return-object v0
.end method

.method private getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 7

    .line 657
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 658
    return-object v0

    .line 660
    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 661
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 662
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_25

    .line 663
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 664
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_22

    return-object v3

    .line 662
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 666
    :cond_25
    return-object v0
.end method

.method private hasMatchingServices(Ljava/lang/String;I)Z
    .registers 5

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 908
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1

    .line 910
    :cond_17
    return v1
.end method

.method private loadAllowedComponentsFromSettings()V
    .registers 7

    .line 430
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

    .line 431
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 432
    nop

    .line 434
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 432
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 437
    nop

    .line 439
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 437
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 442
    :cond_4e
    goto :goto_a

    .line 443
    :cond_4f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "Done loading approved values from settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method private loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;
    .registers 7
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

    .line 767
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3a

    .line 769
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 770
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 771
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 772
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 773
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 774
    if-eqz v3, :cond_2f

    .line 775
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 777
    :cond_2f
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 770
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 781
    :cond_39
    return-object v0

    .line 768
    :cond_3a
    :goto_3a
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    return-object p1
.end method

.method private newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 16

    .line 191
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
    .registers 4

    .line 1079
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    .line 1081
    monitor-exit v0

    .line 1082
    return-void

    .line 1081
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 11

    .line 1277
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/ManagedServices;->newServiceInfo(Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method private registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5

    .line 1283
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1286
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_16
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 1287
    :try_start_12
    monitor-exit v0

    return-object p1

    .line 1291
    :catchall_14
    move-exception p1

    goto :goto_1a

    .line 1288
    :catch_16
    move-exception p1

    .line 1291
    monitor-exit v0

    .line 1292
    const/4 p1, 0x0

    return-object p1

    .line 1291
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_14

    throw p1
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1094
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 1095
    return-void
.end method

.method private registerServiceLocked(Landroid/content/ComponentName;IZ)V
    .registers 14

    .line 1099
    const-string v0, " service: "

    const-string v1, "Unable to bind "

    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1102
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1103
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not registering "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already bound"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1107
    :cond_53
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1110
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_60
    if-ltz v3, :cond_ad

    .line 1111
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1112
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    iget v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v6, p2, :cond_aa

    .line 1115
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    disconnecting old "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0, v3}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1117
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_aa

    .line 1118
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v7, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v5, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1110
    :cond_aa
    add-int/lit8 v3, v3, -0x1

    goto :goto_60

    .line 1123
    :cond_ad
    new-instance v9, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v9, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1126
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget v3, v3, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    const-string v5, "android.intent.extra.client_label"

    invoke-virtual {v9, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1128
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1130
    const-string v5, "android.intent.extra.client_intent"

    invoke-virtual {v9, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1132
    const/4 v3, 0x0

    .line 1134
    :try_start_d8
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1135
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1134
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d8 .. :try_end_e6} :catch_e7

    .line 1138
    goto :goto_e8

    .line 1136
    :catch_e7
    move-exception p1

    .line 1140
    :goto_e8
    if-eqz v3, :cond_ee

    iget p1, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move v8, p1

    goto :goto_ef

    :cond_ee
    move v8, v4

    .line 1143
    :goto_ef
    :try_start_ef
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance p1, Lcom/android/server/notification/ManagedServices$1;

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    move-object v6, v2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZI)V

    .line 1200
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getBindFlags()I

    move-result v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1200
    invoke-virtual {p3, v9, p1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_14c

    .line 1204
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1205
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/SecurityException; {:try_start_ef .. :try_end_14b} :catch_14d

    .line 1207
    return-void

    .line 1212
    :cond_14c
    goto :goto_171

    .line 1209
    :catch_14d
    move-exception p1

    .line 1210
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1211
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1213
    :goto_171
    return-void
.end method

.method private removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 9

    .line 1248
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

    .line 1249
    :cond_23
    const/4 v0, 0x0

    .line 1250
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1251
    :try_start_27
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1252
    add-int/lit8 v2, v2, -0x1

    :goto_2f
    if-ltz v2, :cond_68

    .line 1253
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1254
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_65

    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v4, p2, :cond_65

    .line 1255
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing active service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-direct {p0, v2}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 1252
    :cond_65
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1259
    :cond_68
    monitor-exit v1

    .line 1260
    return-object v0

    .line 1259
    :catchall_6a
    move-exception p1

    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_27 .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method private removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3

    .line 1264
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1266
    return-object p1
.end method

.method private removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z
    .registers 13

    .line 866
    nop

    .line 867
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 868
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 868
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 870
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    .line 871
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 872
    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_60

    .line 873
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 874
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 875
    add-int/lit8 v5, v5, -0x1

    :goto_26
    if-ltz v5, :cond_5d

    .line 876
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 877
    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 878
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 879
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 880
    iget-boolean v7, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v7, :cond_5a

    .line 881
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from approved list; uninstalled"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_5a
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    .line 872
    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 888
    :cond_60
    monitor-exit v0

    .line 889
    return v1

    .line 888
    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_4 .. :try_end_64} :catchall_62

    throw p1
.end method

.method private trimApprovedListsAccordingToInstalledServices(I)V
    .registers 11

    .line 841
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 842
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 843
    if-nez v1, :cond_13

    .line 844
    monitor-exit v0

    return-void

    .line 846
    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 847
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 848
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_26
    if-ltz v4, :cond_75

    .line 849
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 850
    invoke-virtual {p0, v5, p1}, Lcom/android/server/notification/ManagedServices;->isValidEntry(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_53

    .line 851
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 852
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from approved list; no matching services found"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 855
    :cond_53
    iget-boolean v6, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v6, :cond_72

    .line 856
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keeping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " on approved list; matching services found"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_72
    :goto_72
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 846
    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 862
    :cond_78
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_7a
    move-exception p1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method private unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .registers 7

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1310
    goto :goto_29

    .line 1308
    :catch_6
    move-exception p1

    .line 1309
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    :goto_29
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter p1

    .line 1312
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1313
    monitor-exit p1

    .line 1314
    return-void

    .line 1313
    :catchall_3b
    move-exception p2

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw p2
.end method

.method private unregisterService(Landroid/content/ComponentName;I)V
    .registers 4

    .line 1224
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 1226
    monitor-exit v0

    .line 1227
    return-void

    .line 1226
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method private unregisterServiceImpl(Landroid/os/IInterface;I)V
    .registers 4

    .line 1299
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 1300
    if-eqz p1, :cond_19

    iget-object p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz p2, :cond_19

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result p2

    if-nez p2, :cond_19

    .line 1301
    iget-object p2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1303
    :cond_19
    return-void
.end method

.method private unregisterServiceLocked(Landroid/content/ComponentName;I)V
    .registers 7

    .line 1230
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1231
    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    .line 1232
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1233
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-ne v2, p2, :cond_2e

    .line 1234
    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1235
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2e

    .line 1236
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 1231
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1240
    :cond_31
    return-void
.end method


# virtual methods
.method protected addApprovedList(Ljava/lang/String;IZ)V
    .registers 7

    .line 447
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 448
    const-string p1, ""

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 451
    :try_start_b
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 452
    if-nez v1, :cond_27

    .line 453
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 454
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_27
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 458
    if-nez p2, :cond_3f

    .line 459
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 460
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_3f
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 464
    array-length p3, p1

    const/4 v1, 0x0

    :goto_47
    if-ge v1, p3, :cond_57

    aget-object v2, p1, v1

    .line 465
    invoke-direct {p0, v2}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_54

    .line 467
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 470
    :cond_57
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw p1
.end method

.method protected abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 5

    .line 681
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_a

    .line 684
    return-object v0

    .line 686
    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call from unknown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract checkType(Landroid/os/IInterface;)Z
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 20

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10900000001L

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 245
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 246
    :try_start_15
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 247
    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v4, :cond_9c

    .line 248
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 249
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 250
    if-eqz v8, :cond_97

    .line 251
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 252
    const/4 v10, 0x0

    :goto_39
    if-ge v10, v9, :cond_94

    .line 253
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 254
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 255
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_8d

    .line 256
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 257
    invoke-virtual {v12}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_77

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 258
    move/from16 v16, v6

    const-wide v5, 0x20900000001L

    invoke-virtual {v1, v5, v6, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 259
    move/from16 v6, v16

    goto :goto_5e

    .line 260
    :cond_77
    move/from16 v16, v6

    const-wide v5, 0x10500000002L

    invoke-virtual {v1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 261
    const-wide v5, 0x10800000003L

    invoke-virtual {v1, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 262
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8f

    .line 255
    :cond_8d
    move/from16 v16, v6

    .line 252
    :goto_8f
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v16

    goto :goto_39

    :cond_94
    move/from16 v16, v6

    goto :goto_99

    .line 250
    :cond_97
    move/from16 v16, v6

    .line 247
    :goto_99
    add-int/lit8 v6, v16, 0x1

    goto :goto_1c

    .line 267
    :cond_9c
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_15 .. :try_end_9d} :catchall_10a

    .line 269
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 270
    if-eqz v2, :cond_b8

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_b8

    goto :goto_a3

    .line 271
    :cond_b8
    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 272
    goto :goto_a3

    .line 274
    :cond_c1
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 275
    :try_start_c4
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ca
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 276
    if-eqz v2, :cond_e1

    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_e1

    goto :goto_ca

    .line 277
    :cond_e1
    const-wide v6, 0x20b00000004L

    invoke-virtual {v5, v1, v6, v7, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    .line 278
    goto :goto_ca

    .line 279
    :cond_ea
    monitor-exit v4
    :try_end_eb
    .catchall {:try_start_c4 .. :try_end_eb} :catchall_107

    .line 281
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 282
    const-wide v3, 0x20b00000005L

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 283
    goto :goto_f1

    .line 284
    :cond_106
    return-void

    .line 279
    :catchall_107
    move-exception v0

    :try_start_108
    monitor-exit v4
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    .line 267
    :catchall_10a
    move-exception v0

    :try_start_10b
    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 15

    .line 198
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

    .line 199
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 200
    :try_start_21
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 201
    const/4 v2, 0x0

    move v3, v2

    :goto_29
    if-ge v3, v1, :cond_93

    .line 202
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 203
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 204
    if-eqz v5, :cond_90

    .line 205
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 206
    move v7, v2

    :goto_46
    if-ge v7, v6, :cond_90

    .line 207
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 208
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 209
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_8d

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-static {v11, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (user: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isPrimary: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    :cond_8d
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 201
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 216
    :cond_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_21 .. :try_end_94} :catchall_1dd

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    All "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") enabled for current profiles:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 221
    if-eqz p2, :cond_db

    invoke-virtual {p2, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_db

    goto :goto_c6

    .line 222
    :cond_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    goto :goto_c6

    .line 225
    :cond_f0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Live "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_11f
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_125
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_181

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 228
    if-eqz p2, :cond_13c

    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_13c

    goto :goto_125

    .line 229
    :cond_13c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    iget-boolean v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_166

    const-string v4, " SYSTEM"

    goto :goto_168

    :cond_166
    const-string v4, ""

    :goto_168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v2

    if-eqz v2, :cond_174

    const-string v2, " GUEST"

    goto :goto_176

    :cond_174
    const-string v2, ""

    :goto_176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    goto :goto_125

    .line 234
    :cond_181
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_11f .. :try_end_182} :catchall_1da

    .line 236
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    Snoozed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    .line 237
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    goto :goto_1b4

    .line 241
    :cond_1d9
    return-void

    .line 234
    :catchall_1da
    move-exception p1

    :try_start_1db
    monitor-exit v1
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_1da

    throw p1

    .line 216
    :catchall_1dd
    move-exception p1

    :try_start_1de
    monitor-exit v0
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw p1
.end method

.method protected getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;
    .registers 13
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

    .line 915
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 916
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 918
    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_51

    .line 919
    invoke-virtual {p1, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 920
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 921
    :try_start_14
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 922
    if-eqz v6, :cond_4a

    .line 923
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 924
    move v8, v2

    :goto_27
    if-ge v8, v7, :cond_4a

    .line 925
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 926
    if-nez v9, :cond_39

    .line 927
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 928
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 930
    :cond_39
    nop

    .line 931
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-direct {p0, v10, v4}, Lcom/android/server/notification/ManagedServices;->loadComponentNamesFromValues(Landroid/util/ArraySet;I)Landroid/util/ArraySet;

    move-result-object v10

    .line 930
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 924
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 934
    :cond_4a
    monitor-exit v5

    .line 918
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 934
    :catchall_4e
    move-exception p1

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_4e

    throw p1

    .line 936
    :cond_51
    return-object v1
.end method

.method protected getAllowedComponents(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 528
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 529
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 531
    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_43

    .line 532
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 533
    move v5, v2

    :goto_28
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    .line 534
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 535
    if-eqz v6, :cond_3d

    .line 536
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 531
    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 540
    :cond_43
    monitor-exit v1

    .line 541
    return-object v0

    .line 540
    :catchall_45
    move-exception p1

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw p1
.end method

.method protected getAllowedPackages(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 547
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 548
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 549
    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 550
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 551
    move v5, v2

    :goto_28
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_44

    .line 552
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 553
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 554
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 549
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 558
    :cond_47
    monitor-exit v1

    .line 559
    return-object v0

    .line 558
    :catchall_49
    move-exception p1

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method protected getAllowedPackages()Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 822
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 823
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 824
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 825
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 826
    move v5, v2

    :goto_1b
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 827
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 828
    move v7, v2

    :goto_28
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_44

    .line 829
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 831
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 826
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 824
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 836
    :cond_4a
    monitor-exit v1

    .line 837
    return-object v0

    .line 836
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method protected getApproved(IZ)Ljava/lang/String;
    .registers 6

    .line 518
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 521
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 522
    const-string p2, ":"

    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 523
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method protected getBindFlags()I
    .registers 2

    .line 183
    const v0, 0x5000001

    return v0
.end method

.method protected abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method protected getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 893
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_b

    .line 895
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 897
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

    .line 972
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 973
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

    .line 974
    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-nez v3, :cond_24

    invoke-virtual {v2, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isGuest(Lcom/android/server/notification/ManagedServices;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 975
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_24
    goto :goto_b

    .line 978
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

    .line 176
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    monitor-exit v0

    return-object v1

    .line 179
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method isBound(Landroid/content/ComponentName;I)Z
    .registers 3

    .line 1216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1217
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z
    .registers 3

    .line 1445
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isComponentEnabledForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 474
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected isPackageAllowed(Ljava/lang/String;I)Z
    .registers 10

    .line 577
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 578
    return v0

    .line 580
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 581
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 582
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 583
    move v2, v0

    :goto_19
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 584
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 585
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 586
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 587
    const/4 v6, 0x1

    if-eqz v5, :cond_48

    .line 588
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 589
    monitor-exit v1

    return v6

    .line 592
    :cond_48
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 593
    monitor-exit v1

    return v6

    .line 596
    :cond_50
    goto :goto_29

    .line 583
    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 598
    :cond_54
    monitor-exit v1

    .line 599
    return v0

    .line 598
    :catchall_56
    move-exception p1

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw p1
.end method

.method protected isPackageOrComponentAllowed(Ljava/lang/String;I)Z
    .registers 7

    .line 563
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 565
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    .line 566
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 567
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 568
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 569
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 566
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 572
    :cond_2e
    monitor-exit v0

    .line 573
    return v1

    .line 572
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public isSameUser(Landroid/os/IInterface;I)Z
    .registers 4

    .line 691
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 692
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 694
    if-eqz p1, :cond_12

    .line 695
    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 697
    :cond_12
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 698
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method protected isServiceTokenValidLocked(Landroid/os/IInterface;)Z
    .registers 3

    .line 670
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 671
    return v0

    .line 673
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 674
    if-eqz p1, :cond_c

    .line 675
    const/4 p1, 0x1

    return p1

    .line 677
    :cond_c
    return v0
.end method

.method protected isValidEntry(Ljava/lang/String;I)Z
    .registers 3

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->hasMatchingServices(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method protected migrateToXml()V
    .registers 1

    .line 378
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 379
    return-void
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 1

    .line 195
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 12

    .line 603
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

    .line 604
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

    .line 603
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_35
    if-eqz p2, :cond_8e

    array-length v0, p2

    if-lez v0, :cond_8e

    .line 608
    nop

    .line 610
    const/4 v0, 0x0

    if-eqz p1, :cond_59

    if-eqz p3, :cond_59

    .line 611
    array-length p1, p2

    array-length v1, p3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 612
    move v1, v0

    move v2, v1

    :goto_48
    if-ge v1, p1, :cond_5a

    .line 613
    aget-object v2, p2, v1

    .line 614
    aget v3, p3, v1

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 615
    invoke-direct {p0, v3, v2}, Lcom/android/server/notification/ManagedServices;->removeUninstalledItemsFromApprovedLists(ILjava/lang/String;)Z

    move-result v2

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 618
    :cond_59
    move v2, v0

    :cond_5a
    array-length p1, p2

    move v1, v0

    :goto_5c
    if-ge v1, p1, :cond_88

    aget-object v3, p2, v1

    .line 619
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6a

    .line 620
    move v2, v5

    .line 622
    :cond_6a
    if-eqz p3, :cond_85

    array-length v4, p3

    if-lez v4, :cond_85

    .line 623
    array-length v4, p3

    move v6, v2

    move v2, v0

    :goto_72
    if-ge v2, v4, :cond_84

    aget v7, p3, v2

    .line 624
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 625
    move v6, v5

    .line 623
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_84
    move v2, v6

    .line 618
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 631
    :cond_88
    if-eqz v2, :cond_8e

    .line 633
    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 636
    :cond_8e
    return-void
.end method

.method protected abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    .line 186
    return-void
.end method

.method protected onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    .line 287
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    if-nez v0, :cond_76

    .line 288
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored managed service setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
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

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 292
    :cond_34
    const/16 v0, 0x1a

    if-ge p3, v0, :cond_66

    .line 295
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object p3, p3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 296
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p0, p4, p3}, Lcom/android/server/notification/ManagedServices;->getApproved(IZ)Ljava/lang/String;

    move-result-object p3

    .line 297
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 298
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 301
    :cond_65
    move-object p2, p3

    .line 305
    :cond_66
    :goto_66
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 305
    invoke-static {p3, p1, p2, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 307
    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->loadAllowedComponentsFromSettings()V

    .line 308
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 311
    :cond_76
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing approved services for removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 641
    :try_start_19
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_28

    .line 643
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 644
    return-void

    .line 642
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public onUserSwitched(I)V
    .registers 5

    .line 647
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

    .line 648
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 649
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 652
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

    .line 653
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 654
    return-void
.end method

.method protected populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V
    .registers 11
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

    .line 943
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 944
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 945
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 947
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_55

    .line 949
    invoke-virtual {p2, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 950
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 951
    if-nez v4, :cond_27

    .line 952
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 953
    goto :goto_52

    .line 956
    :cond_27
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 957
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-interface {v5, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 959
    invoke-virtual {p1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 961
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 963
    move v3, v1

    :goto_3a
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_52

    .line 964
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 965
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 963
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 947
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 968
    :cond_55
    return-void
.end method

.method protected populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 8
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

    .line 986
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 987
    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 988
    if-eqz v1, :cond_3b

    .line 989
    if-nez p1, :cond_24

    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 990
    :cond_24
    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 991
    invoke-virtual {p4, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 992
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 993
    iget v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 996
    :cond_3b
    goto :goto_4

    .line 997
    :cond_3c
    return-void
.end method

.method protected queryPackageForServices(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
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

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;
    .registers 9
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

    .line 790
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 792
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 794
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    :cond_1d
    or-int/lit16 p1, p2, 0x84

    invoke-virtual {v1, v2, p1, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 800
    iget-boolean p2, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz p2, :cond_44

    .line 801
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " services: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_44
    if-eqz p1, :cond_ab

    .line 803
    const/4 p2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    :goto_4b
    if-ge p2, p3, :cond_ab

    .line 804
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 805
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 807
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 809
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": it does not require the permission "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    goto :goto_a8

    .line 815
    :cond_a5
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    :goto_a8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4b

    .line 818
    :cond_ab
    return-object v0
.end method

.method protected readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    return-void
.end method

.method protected readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V
    .registers 12
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

    .line 389
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8a

    .line 390
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 391
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1c

    .line 392
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 393
    goto :goto_8a

    .line 395
    :cond_1c
    const/4 v4, 0x2

    if-ne v0, v4, :cond_88

    .line 396
    const-string/jumbo v0, "service_listing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 397
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " permissions from xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v0, "approved"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    if-eqz p3, :cond_51

    .line 402
    move v1, p4

    goto :goto_58

    :cond_51
    const-string/jumbo v4, "user"

    invoke-static {p1, v4, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 403
    :goto_58
    nop

    .line 404
    const-string/jumbo v4, "primary"

    invoke-static {p1, v4, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    .line 405
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/notification/ManagedServices;->readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 406
    if-eqz p2, :cond_77

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRequiredPermission()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-interface {p2, v3, v5, v6}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 408
    :cond_77
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_82

    .line 409
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZ)V

    .line 411
    :cond_82
    iput-boolean v2, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    .line 413
    :cond_84
    goto :goto_88

    .line 414
    :cond_85
    invoke-virtual {p0, v3, p1}, Lcom/android/server/notification/ManagedServices;->readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 417
    :cond_88
    :goto_88
    goto/16 :goto_0

    .line 418
    :cond_8a
    :goto_8a
    const/4 p1, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 419
    return-void
.end method

.method protected rebindServices(ZI)V
    .registers 8

    .line 1004
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

    .line 1005
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v0

    .line 1006
    const/4 v1, -0x1

    if-eq p2, v1, :cond_35

    .line 1007
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 1008
    invoke-virtual {v0, p2}, Landroid/util/IntArray;->add(I)V

    .line 1011
    :cond_35
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 1012
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1014
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1015
    nop

    .line 1016
    :try_start_43
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    move-result-object v4

    .line 1021
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/server/notification/ManagedServices;->populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V

    .line 1025
    invoke-virtual {p0, p1, v4, p2, v1}, Lcom/android/server/notification/ManagedServices;->populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 1027
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_59

    .line 1029
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 1030
    invoke-direct {p0, p2}, Lcom/android/server/notification/ManagedServices;->bindToServices(Landroid/util/SparseArray;)V

    .line 1031
    return-void

    .line 1027
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1
.end method

.method protected registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3

    .line 721
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 722
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->checkType(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 728
    :cond_16
    return-void

    .line 723
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V
    .registers 4

    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 710
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->registerServiceImpl(Landroid/os/IInterface;Landroid/content/ComponentName;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 711
    if-eqz p1, :cond_c

    .line 712
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 714
    :cond_c
    return-void
.end method

.method public registerSystemService(Landroid/content/ComponentName;I)V
    .registers 5

    .line 1088
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;IZ)V

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method protected setComponentState(Landroid/content/ComponentName;Z)V
    .registers 9

    .line 731
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 732
    xor-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_b

    .line 733
    return-void

    .line 736
    :cond_b
    if-eqz p2, :cond_13

    .line 737
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_18

    .line 739
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozingForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 743
    :goto_18
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_24

    const-string v2, "Enabling "

    goto :goto_26

    :cond_24
    const-string v2, "Disabling "

    :goto_26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 749
    const/4 v2, 0x0

    :goto_46
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_88

    .line 750
    invoke-virtual {v1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 751
    if-eqz p2, :cond_82

    .line 752
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 753
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_67

    goto :goto_7e

    .line 756
    :cond_67
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " no longer has permission to be bound"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 754
    :cond_7e
    :goto_7e
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_85

    .line 759
    :cond_82
    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(Landroid/content/ComponentName;I)V

    .line 749
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 762
    :cond_88
    monitor-exit v0

    .line 763
    return-void

    .line 762
    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3f .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .registers 9

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

    monitor-enter v0

    .line 482
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 483
    if-nez v1, :cond_46

    .line 484
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 485
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_46
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 488
    if-nez v2, :cond_5e

    .line 489
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 490
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    if-eqz p1, :cond_6d

    .line 495
    if-eqz p4, :cond_6a

    .line 496
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 498
    :cond_6a
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 501
    :cond_6d
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_2a .. :try_end_6e} :catchall_73

    .line 503
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    .line 504
    return-void

    .line 501
    :catchall_73
    move-exception p1

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p1
.end method

.method protected unbindFromServices(Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;>;)V"
        }
    .end annotation

    .line 1034
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 1035
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1036
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1037
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1039
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disabling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices;->getCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-direct {p0, v3, v1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/content/ComponentName;I)V

    .line 1041
    goto :goto_15

    .line 1034
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1043
    :cond_52
    return-void
.end method

.method public unregisterService(Landroid/os/IInterface;I)V
    .registers 3

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceImpl(Landroid/os/IInterface;I)V

    .line 706
    return-void
.end method

.method protected writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    return-void
.end method

.method protected writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;ZI)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "version"

    invoke-interface {v1, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    if-eqz p2, :cond_20

    .line 319
    invoke-direct {v0, v2}, Lcom/android/server/notification/ManagedServices;->trimApprovedListsAccordingToInstalledServices(I)V

    .line 322
    :cond_20
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 323
    :try_start_23
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 324
    const/4 v6, 0x0

    move v7, v6

    :goto_2b
    if-ge v7, v5, :cond_a8

    .line 325
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 326
    if-eqz p2, :cond_3e

    if-eq v8, v2, :cond_3e

    .line 327
    goto :goto_a5

    .line 329
    :cond_3e
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 330
    if-eqz v9, :cond_a5

    .line 331
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 332
    move v11, v6

    :goto_4d
    if-ge v11, v10, :cond_a5

    .line 333
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 334
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 335
    if-eqz v13, :cond_a2

    .line 336
    const-string v14, ":"

    invoke-static {v14, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 337
    const-string/jumbo v14, "service_listing"

    invoke-interface {v1, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    const-string v14, "approved"

    invoke-interface {v1, v4, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    const-string/jumbo v14, "user"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v4, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 340
    const-string/jumbo v14, "primary"

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v4, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    invoke-virtual {v0, v1, v8}, Lcom/android/server/notification/ManagedServices;->writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 342
    const-string/jumbo v14, "service_listing"

    invoke-interface {v1, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 344
    if-nez p2, :cond_a2

    if-eqz v12, :cond_a2

    .line 346
    iget-object v12, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 346
    invoke-static {v12, v14, v13, v8}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 332
    :cond_a2
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    .line 324
    :cond_a5
    :goto_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 355
    :cond_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_23 .. :try_end_a9} :catchall_b6

    .line 357
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    return-void

    .line 355
    :catchall_b6
    move-exception v0

    :try_start_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v0
.end method
