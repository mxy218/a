.class Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;,
        Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintServiceRecS"


# instance fields
.field private final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/printservice/recommendation/IRecommendationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .registers 7

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 136
    new-instance p1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {p1, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 139
    :try_start_13
    invoke-direct {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object p1

    .line 141
    iget-object p3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_47

    .line 142
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    const v2, 0x4000001

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 145
    iget-boolean p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz p2, :cond_2d

    .line 148
    monitor-exit p3

    .line 151
    goto :goto_4f

    .line 146
    :cond_2d
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to bind to service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 148
    :catchall_44
    move-exception p1

    monitor-exit p3
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_44

    :try_start_46
    throw p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 149
    :catch_47
    move-exception p1

    .line 150
    const-string p2, "RemotePrintServiceRecS"

    const-string p3, "Could not connect to print service recommendation service"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_4f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    return p0
.end method

.method private getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.printservice.recommendation.RecommendationService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 85
    const v2, 0x10000084

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_90

    .line 94
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 96
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_88

    .line 107
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_80

    .line 111
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v0, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 118
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    return-object p1

    .line 113
    :cond_5d
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_80
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Service is not part of the system"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_88
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Cannot read appInfo for service"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_90
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead of exactly one service found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method close()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_18

    .line 162
    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    invoke-interface {v2, v1}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_28

    .line 165
    goto :goto_16

    .line 163
    :catch_e
    move-exception v2

    .line 164
    :try_start_f
    const-string v3, "RemotePrintServiceRecS"

    const-string v4, "Could not unregister callbacks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_16
    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 170
    :cond_18
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz v1, :cond_26

    .line 171
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 174
    :cond_26
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_28

    throw v1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    if-eqz v0, :cond_12

    .line 180
    :cond_8
    const-string v0, "RemotePrintServiceRecS"

    const-string v1, "Service still connected on finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 184
    :cond_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 185
    return-void
.end method
