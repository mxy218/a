.class public Lcom/android/server/location/LocationProviderProxy;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "LocationProviderProxy.java"


# static fields
.field private static final D:Z

.field private static final TAG:Ljava/lang/String; = "LocationProviderProxy"


# instance fields
.field private final mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

.field private final mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProviderPackagesLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderPackagesLock:Ljava/lang/Object;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRequestLock"
        }
    .end annotation
.end field

.field private final mRequestLock:Ljava/lang/Object;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;

.field private mWorkSource:Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRequestLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)V
    .registers 16

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    .line 57
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    .line 60
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    .line 62
    new-instance p2, Lcom/android/server/location/LocationProviderProxy$1;

    invoke-direct {p2, p0}, Lcom/android/server/location/LocationProviderProxy$1;-><init>(Lcom/android/server/location/LocationProviderProxy;)V

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    .line 90
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 123
    new-instance p2, Lcom/android/server/location/LocationProviderProxy$2;

    .line 125
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v3, "LocationProviderProxy"

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/LocationProviderProxy$2;-><init>(Lcom/android/server/location/LocationProviderProxy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 140
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 141
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->onSetAdditionalProviderPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationProviderProxy;Landroid/os/IBinder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->initializeService(Landroid/os/IBinder;)V

    return-void
.end method

.method private bind()Z
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)Lcom/android/server/location/LocationProviderProxy;
    .registers 14

    .line 108
    new-instance v7, Lcom/android/server/location/LocationProviderProxy;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Ljava/lang/String;III)V

    .line 111
    invoke-direct {v7}, Lcom/android/server/location/LocationProviderProxy;->bind()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 112
    return-object v7

    .line 114
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private initializeService(Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p1

    .line 150
    sget-boolean v0, Lcom/android/server/location/LocationProviderProxy;->D:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applying state to connected service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationProviderProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mManager:Lcom/android/internal/location/ILocationProviderManager$Stub;

    invoke-interface {p1, v0}, Lcom/android/internal/location/ILocationProvider;->setLocationProviderManager(Lcom/android/internal/location/ILocationProviderManager;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v1, :cond_3a

    .line 158
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {p1, v1, v2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 160
    :cond_3a
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method static synthetic lambda$getStatus$1(Landroid/os/Bundle;Landroid/os/IBinder;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p1

    .line 196
    invoke-interface {p1, p0}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getStatusUpdateTime$2(Landroid/os/IBinder;)Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sendExtraCommand$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {p2}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p2

    .line 212
    invoke-interface {p2, p0, p1}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 213
    return-void
.end method

.method static synthetic lambda$setRequest$0(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    invoke-static {p2}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object p2

    .line 178
    invoke-interface {p2, p0, p1}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 179
    return-void
.end method

.method private onSetAdditionalProviderPackages(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationProviderProxy;->resetProviderPackages(Ljava/util/List;)V

    .line 218
    return-void
.end method

.method private resetProviderPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    :try_start_19
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_27} :catch_28

    .line 229
    goto :goto_44

    .line 226
    :catch_28
    move-exception v2

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " specified unknown additional provider package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationProviderProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_44
    goto :goto_d

    .line 232
    :cond_45
    iget-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 233
    :try_start_48
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 234
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v1}, Lcom/android/server/ServiceWatcher;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_5f

    .line 236
    iget-object v2, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    :cond_5f
    monitor-exit p1

    .line 240
    return-void

    .line 239
    :catchall_61
    move-exception v0

    monitor-exit p1
    :try_end_63
    .catchall {:try_start_48 .. :try_end_63} :catchall_61

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    service="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter p1

    .line 186
    :try_start_19
    iget-object p3, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_38

    .line 187
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    additional packages="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    :cond_38
    monitor-exit p1

    .line 190
    return-void

    .line 189
    :catchall_3a
    move-exception p2

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_3a

    throw p2
.end method

.method public getProviderPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/LocationProviderProxy;->mProviderPackages:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-exit v0

    return-object v1

    .line 167
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$HNmfjzTDtRS07pxKSpIAhcUh88Y;-><init>(Landroid/os/Bundle;)V

    .line 197
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 194
    invoke-virtual {v0, v1, p1}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getStatusUpdateTime()J
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    sget-object v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;->INSTANCE:Lcom/android/server/location/-$$Lambda$LocationProviderProxy$UCv9FaTEgs0wfXFwhEpgptlzg-k;

    .line 205
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ServiceWatcher;->runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$QOuHAndhADLzUnTK39JocbxRlQY;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 214
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 174
    iput-object p2, p0, Lcom/android/server/location/LocationProviderProxy;->mWorkSource:Landroid/os/WorkSource;

    .line 175
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    .line 176
    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$LocationProviderProxy$p3DjIvk7Of_sUF4Dc9plMNfdklc;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    .line 180
    return-void

    .line 175
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method
