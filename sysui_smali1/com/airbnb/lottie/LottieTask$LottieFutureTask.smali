.class Lcom/airbnb/lottie/LottieTask$LottieFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "LottieTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LottieFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/airbnb/lottie/LottieResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieTask;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/airbnb/lottie/LottieResult<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    .line 163
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 3

    .line 168
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 174
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieResult;

    invoke-static {v0, v1}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception v0

    .line 176
    iget-object p0, p0, Lcom/airbnb/lottie/LottieTask$LottieFutureTask;->this$0:Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p0, v1}, Lcom/airbnb/lottie/LottieTask;->access$300(Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieResult;)V

    :goto_1e
    return-void
.end method
