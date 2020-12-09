.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.super Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;,
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;,
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$MyPendingRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService<",
        "Lcom/android/server/autofill/RemoteAugmentedAutofillService;",
        "Landroid/service/autofill/augmented/IAugmentedAutofillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIdleUnbindTimeoutMs:I

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const-class v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V
    .registers 19

    .line 64
    move-object v9, p0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 66
    if-eqz p5, :cond_a

    const/high16 v0, 0x400000

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v7, v0

    .line 64
    const-string v2, "android.service.autofill.augmented.AugmentedAutofillService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/infra/AbstractSinglePendingRequestRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 67
    move/from16 v0, p7

    iput v0, v9, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    .line 68
    move/from16 v0, p8

    iput v0, v9, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 71
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleBind()V

    .line 72
    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Landroid/os/IInterface;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)I
    .registers 1

    .line 51
    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method private dispatchOnFillTimeout(Landroid/os/ICancellationSignal;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$3YjensAPYJHBJpP8njsOCNRhSYw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method static getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ServiceInfo;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 77
    nop

    .line 78
    if-nez p2, :cond_7

    .line 79
    const p2, 0x100080

    goto :goto_9

    .line 78
    :cond_7
    const/16 p2, 0x80

    .line 83
    :goto_9
    nop

    .line 85
    const/4 v0, 0x0

    :try_start_b
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 86
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1, p2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 88
    if-nez p1, :cond_38

    .line 89
    sget-object p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad service name for flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_37} :catch_3f

    .line 90
    return-object v0

    .line 95
    :cond_38
    nop

    .line 96
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 92
    :catch_3f
    move-exception p1

    .line 93
    sget-object p2, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting service info for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-object v0
.end method

.method static synthetic lambda$onDestroyAutofillWindowsRequest$0(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V

    return-void
.end method


# virtual methods
.method protected getRemoteRequestMillis()J
    .registers 3

    .line 127
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .registers 2

    .line 117
    invoke-static {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .registers 3

    .line 122
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected handleOnConnectedStateChanged(Z)V
    .registers 6

    .line 101
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getTimeoutIdleBindMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 102
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleUnbind()V

    .line 105
    :cond_f
    if-eqz p1, :cond_1d

    .line 106
    :try_start_11
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    invoke-interface {v0, v1, v2}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V

    goto :goto_24

    .line 108
    :cond_1d
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mService:Landroid/os/IInterface;

    check-cast v0, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-interface {v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_25

    .line 112
    :goto_24
    goto :goto_44

    .line 110
    :catch_25
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onConnectedStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_44
    return-void
.end method

.method public synthetic lambda$dispatchOnFillTimeout$1$RemoteAugmentedAutofillService(Landroid/os/ICancellationSignal;)V
    .registers 5

    .line 156
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 159
    goto :goto_1b

    .line 157
    :catch_4
    move-exception p1

    .line 158
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling cancellation signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1b
    return-void
.end method

.method public onDestroyAutofillWindowsRequest()V
    .registers 2

    .line 150
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$e7zSmzv77rBdYV5oCl-Y8EJj9dY;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 151
    return-void
.end method

.method public onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .registers 16

    .line 136
    new-instance v8, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$PendingAutofillRequest;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    invoke-virtual {p0, v8}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->scheduleRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAugmentedAutofillService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0
.end method
