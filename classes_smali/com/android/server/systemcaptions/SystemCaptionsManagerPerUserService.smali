.class final Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "SystemCaptionsManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;",
        "Lcom/android/server/systemcaptions/SystemCaptionsManagerService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/systemcaptions/SystemCaptionsManagerService;Ljava/lang/Object;ZI)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 47
    return-void
.end method

.method private getRemoteServiceLocked()Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-nez v0, :cond_57

    .line 91
    invoke-virtual {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1b

    .line 93
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_19

    .line 94
    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "getRemoteServiceLocked(): Not set"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_19
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_1b
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    iget-object v4, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v4, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v4, v4, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IZ)V

    iput-object v1, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 105
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_52

    .line 106
    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteServiceLocked(): initialize for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_52
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    invoke-virtual {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->initialize()V

    .line 111
    :cond_57
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    return-object v0
.end method


# virtual methods
.method destroyLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_f

    .line 78
    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "destroyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_f
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    if-eqz v0, :cond_19

    .line 82
    invoke-virtual {v0}, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->destroy()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mRemoteService:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 85
    :cond_19
    return-void
.end method

.method initializeLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_f

    .line 66
    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_f
    invoke-direct {p0}, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->getRemoteServiceLocked()Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    move-result-object v0

    .line 70
    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    iget-boolean v0, v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;->verbose:Z

    if-eqz v0, :cond_24

    .line 71
    sget-object v0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->TAG:Ljava/lang/String;

    const-string v1, "initialize(): Failed to init remote server"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_24
    return-void
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/systemcaptions/SystemCaptionsManagerPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 57
    :catch_d
    move-exception v0

    .line 58
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get service for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
