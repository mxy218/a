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

    .line 313
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 314
    iput p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    .line 315
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to check attention: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ID: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AttentionDetector"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p1}, Lcom/android/server/power/AttentionDetector;->access$100(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    return-void
.end method

.method public onSuccess(IJ)V
    .registers 5

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onSuccess: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AttentionDetector"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->mId:I

    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    iget p3, p3, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    if-ne p2, p3, :cond_5e

    iget-object p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p2}, Lcom/android/server/power/AttentionDetector;->access$100(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 324
    iget-object p2, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p2}, Lcom/android/server/power/AttentionDetector;->access$200(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 325
    :try_start_3d
    iget-object p3, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p3}, Lcom/android/server/power/AttentionDetector;->access$300(Lcom/android/server/power/AttentionDetector;)I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_48

    .line 327
    monitor-exit p2

    return-void

    .line 329
    :cond_48
    if-ne p1, v0, :cond_54

    .line 330
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p1}, Lcom/android/server/power/AttentionDetector;->access$400(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_59

    .line 332
    :cond_54
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;->this$0:Lcom/android/server/power/AttentionDetector;

    invoke-static {p1}, Lcom/android/server/power/AttentionDetector;->access$500(Lcom/android/server/power/AttentionDetector;)V

    .line 334
    :goto_59
    monitor-exit p2

    goto :goto_5e

    :catchall_5b
    move-exception p1

    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_5b

    throw p1

    .line 336
    :cond_5e
    :goto_5e
    return-void
.end method
