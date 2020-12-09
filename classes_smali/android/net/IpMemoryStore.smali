.class public Landroid/net/IpMemoryStore;
.super Landroid/net/IpMemoryStoreClient;
.source "IpMemoryStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/net/IIpMemoryStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mTailNode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/net/IIpMemoryStore;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Landroid/net/IpMemoryStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Landroid/net/IpMemoryStoreClient;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    invoke-virtual {p0}, Landroid/net/IpMemoryStore;->getNetworkStackClient()Landroid/net/NetworkStackClient;

    move-result-object p1

    new-instance v0, Landroid/net/IpMemoryStore$1;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore$1;-><init>(Landroid/net/IpMemoryStore;)V

    invoke-virtual {p1, v0}, Landroid/net/NetworkStackClient;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 35
    iget-object p0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;
    .registers 2

    .line 90
    new-instance v0, Landroid/net/IpMemoryStore;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$runWhenServiceReady$0(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;
    .registers 5

    .line 67
    if-eqz p2, :cond_a

    .line 69
    sget-object p0, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    const-string v0, "Error fetching IpMemoryStore"

    invoke-static {p0, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    return-object p1

    .line 74
    :cond_a
    :try_start_a
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 77
    goto :goto_29

    .line 75
    :catch_e
    move-exception p0

    .line 76
    sget-object p2, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_29
    return-object p1
.end method

.method static synthetic lambda$runWhenServiceReady$1(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .registers 3

    .line 66
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStore$pFctTFAvh_Nxb_aTb0gjNsixGeM;

    invoke-direct {v0, p0}, Landroid/net/-$$Lambda$IpMemoryStore$pFctTFAvh_Nxb_aTb0gjNsixGeM;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getNetworkStackClient()Landroid/net/NetworkStackClient;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    return-object v0
.end method

.method protected runWhenServiceReady(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;

    invoke-direct {v1, p1}, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    .line 80
    return-void
.end method
