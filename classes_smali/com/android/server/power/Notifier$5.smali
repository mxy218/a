.class Lcom/android/server/power/Notifier$5;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$interactiveChangeLatency:I

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;II)V
    .registers 4

    .line 516
    iput-object p1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    iput p3, p0, Lcom/android/server/power/Notifier$5;->val$interactiveChangeLatency:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 519
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 520
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 521
    iget v1, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 522
    iget v1, p0, Lcom/android/server/power/Notifier$5;->val$interactiveChangeLatency:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 523
    iget-object v1, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    .line 524
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 523
    const/16 v2, 0x69f

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 525
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 526
    iget v4, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    iget v8, p0, Lcom/android/server/power/Notifier$5;->val$interactiveChangeLatency:I

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 527
    iget-object v0, p0, Lcom/android/server/power/Notifier$5;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$5;->val$why:I

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->finishedGoingToSleep(I)V

    .line 528
    return-void
.end method