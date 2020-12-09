.class Lcom/android/server/PinnerService$3;
.super Landroid/app/IUidObserver$Stub;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PinnerService;->registerUidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUidActive$1(Ljava/lang/Object;I)V
    .registers 2

    .line 298
    check-cast p0, Lcom/android/server/PinnerService;

    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->access$300(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method static synthetic lambda$onUidGone$0(Ljava/lang/Object;I)V
    .registers 2

    .line 292
    check-cast p0, Lcom/android/server/PinnerService;

    invoke-static {p0, p1}, Lcom/android/server/PinnerService;->access$400(Lcom/android/server/PinnerService;I)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 297
    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    iget-object p2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {p2}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object p2

    sget-object v0, Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;

    iget-object v1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 291
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method
