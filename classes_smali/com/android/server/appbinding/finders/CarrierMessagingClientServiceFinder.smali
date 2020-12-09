.class public Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;
.super Lcom/android/server/appbinding/finders/AppServiceFinder;
.source "CarrierMessagingClientServiceFinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/appbinding/finders/AppServiceFinder<",
        "Landroid/service/carrier/CarrierMessagingClientService;",
        "Landroid/service/carrier/ICarrierMessagingClientService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field private final mRoleManager:Landroid/app/role/RoleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/appbinding/finders/AppServiceFinder;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appbinding/finders/AppServiceFinder;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;Landroid/os/Handler;)V

    .line 121
    new-instance p2, Lcom/android/server/appbinding/finders/-$$Lambda$CarrierMessagingClientServiceFinder$HEVyQ3IEZ8Eseze74Vyp3NHEREg;

    invoke-direct {p2, p0}, Lcom/android/server/appbinding/finders/-$$Lambda$CarrierMessagingClientServiceFinder$HEVyQ3IEZ8Eseze74Vyp3NHEREg;-><init>(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V

    iput-object p2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 53
    const-class p2, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p1

    return-object p1
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;
    .registers 2

    .line 74
    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p1

    return-object p1
.end method

.method public getAppDescription()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "[Default SMS app]"

    return-object v0
.end method

.method public getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I
    .registers 2

    .line 118
    iget p1, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    return p1
.end method

.method protected getServiceAction()Ljava/lang/String;
    .registers 2

    .line 79
    const-string v0, "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object v0
.end method

.method protected getServiceClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/service/carrier/CarrierMessagingClientService;",
            ">;"
        }
    .end annotation

    .line 69
    const-class v0, Landroid/service/carrier/CarrierMessagingClientService;

    return-object v0
.end method

.method protected getServicePermission()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "android.permission.BIND_CARRIER_MESSAGING_CLIENT_SERVICE"

    return-object v0
.end method

.method public getTargetPackage(I)Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 90
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 89
    const-string v1, "android.app.role.SMS"

    invoke-virtual {v0, v1, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 96
    return-object p1
.end method

.method protected isEnabled(Lcom/android/server/appbinding/AppBindingConstants;)Z
    .registers 3

    .line 58
    iget-boolean p1, p1, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x11100f1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 58
    :goto_16
    return p1
.end method

.method public synthetic lambda$new$0$CarrierMessagingClientServiceFinder(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 122
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 123
    iget-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :cond_15
    return-void
.end method

.method public startMonitoring()V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleManager:Landroid/app/role/RoleManager;

    .line 102
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mRoleHolderChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 103
    return-void
.end method

.method protected validateService(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 3

    .line 107
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 110
    if-eqz p1, :cond_f

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    .line 113
    :cond_d
    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_f
    :goto_f
    const-string p1, "Service must not run on the main process"

    return-object p1
.end method
