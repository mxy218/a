.class final Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionDetector.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/AttentionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AttentionCallbackInternalImpl"
.end annotation


# instance fields
.field private final mId:I

.field final synthetic this$0:Lcom/android/server/power/AttentionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/AttentionDetector;I)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/power/AttentionDetector;
    .param p2, "id"  # I

    .line 316
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 317
    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 318
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 4
    .param p1, "error"  # I

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check attention: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->access$200(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 345
    return-void
.end method

.method public onSuccess(IJ)V
    .registers 7
    .param p1, "result"  # I
    .param p2, "timestamp"  # J

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget v1, v1, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->access$200(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 327
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v0}, Lcom/android/server/power/AttentionDetector;->access$300(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 328
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->access$400(Lcom/android/server/power/AttentionDetector;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    .line 330
    monitor-exit v0

    return-void

    .line 332
    :cond_48
    if-ne p1, v2, :cond_54

    .line 333
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->access$500(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_59

    .line 335
    :cond_54
    iget-object v1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {v1}, Lcom/android/server/power/AttentionDetector;->access$600(Lcom/android/server/power/AttentionDetector;)V

    .line 337
    :goto_59
    monitor-exit v0

    goto :goto_5e

    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_5b

    throw v1

    .line 339
    :cond_5e
    :goto_5e
    return-void
.end method
