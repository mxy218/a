.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# instance fields
.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field traceCookie:I

.field traceMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .registers 3

    .line 14934
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14935
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 14936
    return-void
.end method


# virtual methods
.method getRollbackUser()Landroid/os/UserHandle;
    .registers 3

    .line 14950
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v1, :cond_9

    .line 14951
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    .line 14953
    :cond_9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 14939
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleStartCopy()V
.end method

.method setTraceCookie(I)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .registers 2

    .line 14962
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 14963
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .registers 2

    .line 14957
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 14958
    return-object p0
.end method

.method final startCopy()V
    .registers 1

    .line 14968
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V

    .line 14969
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 14970
    return-void
.end method
