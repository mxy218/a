.class public Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
.super Ljava/lang/Object;
.source "FlymeSystemUpdateBadgeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageName:Ljava/lang/String;

.field private mQueryUpdateService:Lcom/meizu/flyme/update/IQueryUpdateService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mUpdateChangeListener:Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$1;-><init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mUpdateChangeListener:Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;

    .line 44
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$2;-><init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 68
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$3;-><init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Landroid/os/Handler;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Lcom/meizu/flyme/update/IQueryUpdateService;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mQueryUpdateService:Lcom/meizu/flyme/update/IQueryUpdateService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;Lcom/meizu/flyme/update/IQueryUpdateService;)Lcom/meizu/flyme/update/IQueryUpdateService;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mQueryUpdateService:Lcom/meizu/flyme/update/IQueryUpdateService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mUpdateChangeListener:Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private bindQueryUpdateService()V
    .registers 4

    const-string v0, "FlymeSystemUpdateBadgeHelper"

    const-string/jumbo v1, "start bindQueryUpdateService"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.meizu.flyme.update.QUERY_UPDATE"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.meizu.flyme.update"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
    .registers 2

    .line 97
    sget-object v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mInstance:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    if-nez v0, :cond_b

    .line 98
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mInstance:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    .line 100
    :cond_b
    sget-object p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mInstance:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    return-object p0
.end method


# virtual methods
.method public addLocalCallback(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;)V
    .registers 4

    if-eqz p1, :cond_26

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 108
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLocalCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSystemUpdateBadgeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public queryUpdate()Z
    .registers 5

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mQueryUpdateService:Lcom/meizu/flyme/update/IQueryUpdateService;

    const-string v1, "FlymeSystemUpdateBadgeHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 123
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->bindQueryUpdateService()V

    const-string/jumbo p0, "queryUpdate service not bind"

    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 129
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/meizu/flyme/update/IQueryUpdateService;->hasUpdate(Ljava/lang/String;)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_21

    :catch_18
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mQueryUpdateService:Lcom/meizu/flyme/update/IQueryUpdateService;

    const-string/jumbo p0, "queryUpdate failed"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return v2
.end method

.method public removeLocalCallback(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$UpdateChangeLocalCallback;)V
    .registers 4

    if-eqz p1, :cond_27

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_27

    .line 117
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLocalCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSystemUpdateBadgeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_27
    :goto_27
    return-void
.end method
