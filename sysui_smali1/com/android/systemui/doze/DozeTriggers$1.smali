.class Lcom/android/systemui/doze/DozeTriggers$1;
.super Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;

.field final synthetic val$callback:Ljava/util/function/IntConsumer;

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/IntConsumer;)V
    .registers 6

    .line 147
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$start:J

    iput p4, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$reason:I

    iput-object p5, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$callback:Ljava/util/function/IntConsumer;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .registers 8

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 151
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$1;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    iget-wide v4, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$start:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$reason:I

    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$1;->val$callback:Ljava/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method