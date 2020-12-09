.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;,
        Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/autofill/AutofillManagerService;",
        "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPAT_PACKAGE_DELIMITER:C = ':'

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_BEGIN:C = '['

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_END:C = ']'

.field private static final COMPAT_PACKAGE_URL_IDS_DELIMITER:C = ','

.field private static final DEFAULT_AUGMENTED_AUTOFILL_REQUEST_TIMEOUT_MILLIS:I = 0x1388

.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String; = "AutofillManagerService"

.field private static final sLock:Ljava/lang/Object;

.field private static sPartitionMaxCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field private static sVisibleDatasetsMaxCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field


# instance fields
.field private final mAm:Landroid/app/ActivityManagerInternal;

.field final mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field final mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

.field mAugmentedServiceIdleUnbindTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mAugmentedServiceRequestTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private mSupportedSmartSuggestionModes:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 111
    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    sput-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    .line 129
    const/16 v0, 0xa

    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 139
    const/4 v0, 0x0

    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 190
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "autofill_service"

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "no_autofill"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V

    .line 149
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 150
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 151
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 153
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 155
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 158
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    .line 193
    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 194
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 196
    nop

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 196
    const-string v3, "autofill"

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 200
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    .line 201
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    .line 202
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    .line 203
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    .line 205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    new-instance p1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040159

    invoke-direct {p1, v0, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 211
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$6afarI-dhLaYDLGebVyDMPu2nok;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$6afarI-dhLaYDLGebVyDMPu2nok;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    .line 214
    iget p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    if-eqz p1, :cond_e0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 216
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 217
    const/4 v0, 0x0

    :goto_bb
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e0

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 220
    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 223
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 224
    invoke-virtual {v3, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 225
    invoke-virtual {v4, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v4

    .line 223
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->access$400(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 228
    :cond_e0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/autofill/AutofillManagerService;)Z
    .registers 1

    .line 106
    iget-boolean p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V
    .registers 4

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/server/autofill/AutofillManagerService;I)Z
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->isDisabledLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6800()I
    .registers 1

    .line 106
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    return v0
.end method

.method static synthetic access$6900()I
    .registers 1

    .line 106
    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7200(Lcom/android/server/autofill/AutofillManagerService;)I
    .registers 1

    .line 106
    iget p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return p0
.end method

.method static synthetic access$7300(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method private addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 13

    .line 637
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->reset(I)V

    .line 638
    nop

    .line 639
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object p1

    .line 640
    if-eqz p1, :cond_63

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_63

    .line 644
    :cond_13
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages()Ljava/util/Map;

    move-result-object v0

    .line 645
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 646
    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_62

    .line 647
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 648
    if-eqz v0, :cond_48

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_48

    .line 652
    :cond_2e
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 653
    if-eqz v3, :cond_5f

    .line 654
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 655
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [Ljava/lang/String;

    .line 654
    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V

    goto :goto_5f

    .line 649
    :cond_48
    :goto_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring not whitelisted compat package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    nop

    .line 646
    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 658
    :cond_62
    return-void

    .line 641
    :cond_63
    :goto_63
    return-void
.end method

.method public static getPartitionMaxCount()I
    .registers 2

    .line 768
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    .line 770
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getVisibleDatasetsMaxCount()I
    .registers 2

    .line 777
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_3
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    .line 779
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getWhitelistedCompatModePackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 714
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 715
    return-object v1

    .line 718
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 719
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 720
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 721
    :goto_17
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 722
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 723
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 726
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    .line 727
    nop

    .line 728
    move-object v7, v1

    goto/16 :goto_cb

    .line 730
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "AutofillManagerService"

    const/16 v7, 0x5d

    if-eq v5, v7, :cond_68

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring entry \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' on \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'because it does not end on \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    goto :goto_17

    .line 737
    :cond_68
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 738
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 739
    add-int/lit8 v4, v4, 0x1

    .line 740
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 741
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_b2

    .line 742
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": block:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": urls:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_b2
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x2c

    invoke-direct {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 747
    invoke-virtual {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 748
    :goto_bc
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 749
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 750
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    goto :goto_bc

    .line 748
    :cond_ca
    move-object v3, v5

    .line 753
    :goto_cb
    if-nez v7, :cond_d1

    .line 754
    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd

    .line 756
    :cond_d1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 757
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 758
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :goto_dd
    goto/16 :goto_17

    .line 761
    :cond_df
    return-object v0
.end method

.method private getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;
    .registers 3

    .line 661
    nop

    .line 662
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    const-string v1, "autofill_compat_mode_allowed_packages"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$destroySessions$2(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 361
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    return-void
.end method

.method static synthetic lambda$listSessions$3(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 2

    .line 387
    invoke-virtual {p1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .registers 1

    .line 405
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    return-void
.end method

.method private onAugmentedServiceNameChanged(ILjava/lang/String;Z)V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->access$400(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    .line 291
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 292
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 293
    monitor-exit p2

    .line 294
    return-void

    .line 293
    :catchall_13
    move-exception p1

    monitor-exit p2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5c32f116

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3c

    const v3, -0x3adc2628

    if-eq v2, v3, :cond_32

    const v3, 0x65df5c5a

    if-eq v2, v3, :cond_27

    :cond_26
    goto :goto_45

    :cond_27
    const-string/jumbo v2, "smart_suggestion_supported_modes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x0

    goto :goto_45

    :cond_32
    const-string v2, "augmented_service_request_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v1, v4

    goto :goto_45

    :cond_3c
    const-string v2, "augmented_service_idle_unbind_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move v1, v5

    :goto_45
    if-eqz v1, :cond_62

    if-eq v1, v5, :cond_62

    if-eq v1, v4, :cond_62

    .line 283
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 280
    :cond_62
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    .line 281
    nop

    .line 285
    :goto_66
    goto :goto_4

    .line 286
    :cond_67
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;I)V
    .registers 4

    .line 673
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, p2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 676
    goto :goto_1c

    .line 674
    :catch_5
    move-exception p1

    .line 675
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error async reporting result to client: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_1c
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;II)V
    .registers 4

    .line 705
    :try_start_0
    invoke-static {p3}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(I)Landroid/os/Bundle;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 708
    goto :goto_1f

    .line 706
    :catch_8
    move-exception p1

    .line 707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error async reporting result to client: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_1f
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V
    .registers 4

    .line 681
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 684
    goto :goto_1c

    .line 682
    :catch_5
    move-exception p1

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error async reporting result to client: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutofillManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_1c
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .registers 3

    .line 696
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    .line 697
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .registers 3

    .line 688
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    .line 689
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Z)V
    .registers 3

    .line 700
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    .line 701
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .registers 3

    .line 692
    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    .line 693
    return-void
.end method

.method private setDeviceConfigProperties()V
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_3
    const-string v1, "autofill"

    const-string v2, "augmented_service_idle_unbind_timeout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    .line 532
    const-string v1, "autofill"

    const-string v2, "augmented_service_request_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    .line 536
    const-string v1, "autofill"

    const-string/jumbo v2, "smart_suggestion_supported_modes"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 540
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v1, :cond_5b

    .line 541
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceConfigProperties(): augmentedIdleTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", augmentedRequestTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", smartSuggestionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    .line 545
    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_5b
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private setLogLevelFromSettings()V
    .registers 6

    .line 425
    nop

    .line 426
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    .line 425
    const-string v2, "autofill_logging_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 428
    nop

    .line 429
    nop

    .line 430
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 431
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1c

    .line 432
    move v2, v1

    goto :goto_38

    .line 433
    :cond_1c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    .line 434
    goto :goto_38

    .line 436
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLogLevelFromSettings(): invalid level: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AutofillManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_37
    move v1, v2

    :goto_38
    if-nez v1, :cond_3e

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_65

    .line 440
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevelFromSettings(): level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", debug="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", verbose="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AutofillManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_65
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_68
    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLoggingLevelsLocked(ZZ)V

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method private setLoggingLevelsLocked(ZZ)V
    .registers 3

    .line 626
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 627
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 628
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    .line 630
    sput-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 631
    sput-boolean p2, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 632
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    .line 633
    return-void
.end method

.method private setMaxPartitionsFromSettings()V
    .registers 4

    .line 483
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_max_partitions_size"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 486
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitionsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2b
    sget-object v1, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_2e
    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    .line 490
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_32

    throw v0
.end method

.method private setMaxVisibleDatasetsFromSettings()V
    .registers 4

    .line 517
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_max_visible_datasets"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 520
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxVisibleDatasetsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_2a
    sget-object v1, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_2d
    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    .line 523
    monitor-exit v1

    .line 524
    return-void

    .line 523
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw v0
.end method


# virtual methods
.method calculateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 553
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 555
    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 556
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    .line 558
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/autofill/AutofillValue;

    invoke-static {p2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array p2, v1, [Ljava/lang/String;

    aput-object p3, p2, v3

    const/4 p3, 0x0

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p4

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 560
    return-void
.end method

.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 5

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySessions() for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 354
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2b

    .line 356
    :try_start_1f
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 357
    if-eqz p1, :cond_2a

    .line 358
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 360
    :cond_2a
    goto :goto_30

    .line 361
    :cond_2b
    sget-object p1, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 363
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_3d

    .line 366
    const/4 p1, 0x0

    :try_start_32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3a} :catch_3b

    .line 369
    goto :goto_3c

    .line 367
    :catch_3b
    move-exception p1

    .line 370
    :goto_3c
    return-void

    .line 363
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 318
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method getFullScreenMode()Ljava/lang/Boolean;
    .registers 2

    .line 564
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 565
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method getLogLevel()I
    .registers 3

    .line 450
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 452
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_6
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    monitor-exit v0

    return v1

    .line 454
    :cond_d
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 455
    :cond_14
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 456
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method getMaxPartitions()I
    .registers 3

    .line 461
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 463
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_6
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    .line 465
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method getMaxVisibleDatasets()I
    .registers 3

    .line 495
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 497
    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_6
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    .line 499
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .registers 2

    .line 232
    const-string v0, "autofill_service"

    return-object v0
.end method

.method getSupportedSmartSuggestionModesLocked()I
    .registers 2

    .line 334
    iget v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return v0
.end method

.method isDefaultAugmentedServiceEnabled(I)Z
    .registers 3

    .line 598
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 599
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result p1

    return p1
.end method

.method isInstantServiceAllowed()Z
    .registers 2

    .line 346
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    return v0
.end method

.method public synthetic lambda$new$0$AutofillManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 198
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public synthetic lambda$new$1$AutofillManagerService(ILjava/lang/String;Z)V
    .registers 4

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->onAugmentedServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 7

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listSessions() for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 377
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    const/4 v3, -0x1

    if-eq p1, v3, :cond_37

    .line 382
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p1

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 383
    if-eqz p1, :cond_34

    .line 384
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 386
    :cond_34
    goto :goto_3f

    .line 389
    :catchall_35
    move-exception p1

    goto :goto_4d

    .line 387
    :cond_37
    new-instance p1, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;

    invoke-direct {p1, v1}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 389
    :goto_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_35

    .line 391
    const-string/jumbo p1, "sessions"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 393
    const/4 p1, 0x0

    :try_start_47
    invoke-interface {p2, p1, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 396
    goto :goto_4c

    .line 394
    :catch_4b
    move-exception p1

    .line 397
    :goto_4c
    return-void

    .line 389
    :goto_4d
    :try_start_4d
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_35

    throw p1
.end method

.method logRequestLocked(Ljava/lang/String;)V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 13

    .line 299
    new-instance v9, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-object v0, v9

    move-object v1, p0

    move v5, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Z)V

    return-object v9
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p1

    return-object p1
.end method

.method protected onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 3

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    .line 314
    return-void
.end method

.method protected bridge synthetic onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 106
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 3

    .line 306
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 307
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {p1, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->removeCompatibilityModeRequests(I)V

    .line 308
    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .registers 3

    .line 106
    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .registers 7

    .line 254
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_70

    :cond_a
    goto :goto_33

    :sswitch_b
    const-string v0, "autofill_compat_mode_allowed_packages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_34

    :sswitch_15
    const-string v0, "autofill_max_partitions_size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_34

    :sswitch_1f
    const-string v0, "autofill_logging_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_34

    :sswitch_29
    const-string v0, "autofill_max_visible_datasets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    if-eqz v0, :cond_6a

    if-eq v0, v3, :cond_66

    if-eq v0, v2, :cond_62

    if-eq v0, v1, :cond_57

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected property ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "); updating cache instead"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutofillManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_57
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 269
    :try_start_5a
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    .line 270
    monitor-exit p2

    goto :goto_6e

    :catchall_5f
    move-exception p1

    monitor-exit p2
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_5f

    throw p1

    .line 262
    :cond_62
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    .line 263
    goto :goto_6e

    .line 259
    :cond_66
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    .line 260
    goto :goto_6e

    .line 256
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    .line 257
    nop

    .line 272
    :goto_6e
    return-void

    nop

    :sswitch_data_70
    .sparse-switch
        -0x6e3577f0 -> :sswitch_29
        -0x4d71a329 -> :sswitch_1f
        -0x3e858531 -> :sswitch_15
        0x638fc930 -> :sswitch_b
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    .line 323
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    const-string v1, "autofill"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 324
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 329
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_b

    const-string p1, "AutofillManagerService"

    const-string v0, "Hiding UI when user switched"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_b
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 331
    return-void
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 6

    .line 238
    const-string v0, "autofill_compat_mode_allowed_packages"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    const-string v0, "autofill_logging_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 244
    const-string v0, "autofill_max_partitions_size"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 247
    const-string v0, "autofill_max_visible_datasets"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 250
    return-void
.end method

.method reset()V
    .registers 3

    .line 401
    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 404
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_e
    sget-object v1, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->clearCacheLocked()V

    .line 407
    monitor-exit v0

    .line 408
    return-void

    .line 407
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method resetTemporaryAugmentedAutofillService(I)V
    .registers 3

    .line 592
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 593
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    .line 594
    return-void
.end method

.method setDefaultAugmentedServiceEnabled(IZ)Z
    .registers 6

    .line 604
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultAugmentedServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 607
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 609
    if-eqz v1, :cond_56

    .line 610
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    .line 611
    invoke-virtual {v2, p1, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result p1

    .line 612
    if-eqz p1, :cond_3b

    .line 613
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    .line 614
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 616
    :cond_3b
    iget-boolean p1, p0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    if-eqz p1, :cond_56

    .line 617
    const-string p1, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultAugmentedServiceEnabled(): already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_56
    monitor-exit v0

    .line 622
    const/4 p1, 0x0

    return p1

    .line 621
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method setFullScreenMode(Ljava/lang/Boolean;)V
    .registers 2

    .line 570
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 571
    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 572
    return-void
.end method

.method setLogLevel(I)V
    .registers 6

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLogLevel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 417
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_logging_level"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_30

    .line 420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    nop

    .line 422
    return-void

    .line 420
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setMaxPartitions(I)V
    .registers 6

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxPartitions(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_max_partitions_size"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_30

    .line 478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setMaxVisibleDatasets(I)V
    .registers 6

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxVisibleDatasets(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 509
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_max_visible_datasets"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_30

    .line 512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    nop

    .line 514
    return-void

    .line 512
    :catchall_30
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method setTemporaryAugmentedAutofillService(ILjava/lang/String;I)V
    .registers 7

    .line 577
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryAugmentedAutofillService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    .line 581
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const v0, 0x1d4c0

    if-gt p3, v0, :cond_3e

    .line 587
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    .line 588
    return-void

    .line 583
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Max duration is 120000 (called with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
