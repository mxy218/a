.class public Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentSuggestionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;",
        "Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 68
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x104015c

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_suggestions"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V

    .line 71
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;ILjava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->enforceCaller(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Z
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->isDisabledLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 56
    sget-object v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;)Ljava/lang/Object;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    return-object p0
.end method

.method private enforceCaller(ILjava/lang/String;)V
    .registers 5

    .line 97
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    const-string v1, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 99
    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_5a

    .line 104
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected caller is recents"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    sget-object p2, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 101
    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method protected enforceCallingPermissionForManagement()V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_CONTENT_SUGGESTIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .registers 2

    .line 93
    const v0, 0x1d4c0

    return v0
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;
    .registers 4

    .line 77
    new-instance p2, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    iget-object v0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Ljava/lang/Object;I)V

    return-object p2
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .registers 3

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->newServiceLocked(IZ)Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .registers 3

    .line 82
    new-instance v0, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$ContentSuggestionsManagerStub;-><init>(Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService$1;)V

    const-string v1, "content_suggestions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 84
    return-void
.end method
