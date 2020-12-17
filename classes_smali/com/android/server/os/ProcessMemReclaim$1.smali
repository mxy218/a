.class Lcom/android/server/os/ProcessMemReclaim$1;
.super Landroid/os/Handler;
.source "ProcessMemReclaim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/ProcessMemReclaim;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/ProcessMemReclaim;


# direct methods
.method constructor <init>(Lcom/android/server/os/ProcessMemReclaim;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/os/ProcessMemReclaim;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 56
    iput-object p1, p0, Lcom/android/server/os/ProcessMemReclaim$1;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process msg："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessMemReclaim"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x110

    if-eq v0, v2, :cond_6a

    const/16 v2, 0x111

    if-eq v0, v2, :cond_24

    goto :goto_70

    .line 65
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reclaim mReclaimCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$100()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 67
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$1;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$200()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/server/os/ProcessMemReclaim;->access$300(Lcom/android/server/os/ProcessMemReclaim;II)I

    .line 68
    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$100()I

    move-result v1

    if-lez v1, :cond_5b

    .line 69
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$1;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$400()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/os/ProcessMemReclaim;->access$500(Lcom/android/server/os/ProcessMemReclaim;IJ)V

    .line 70
    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$110()I

    goto :goto_70

    .line 72
    :cond_5b
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$1;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    sget-object v2, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMED:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    invoke-static {v1, v2}, Lcom/android/server/os/ProcessMemReclaim;->access$602(Lcom/android/server/os/ProcessMemReclaim;Lcom/android/server/os/ProcessMemReclaim$ReclaimState;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 73
    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$700()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/os/ProcessMemReclaim;->access$102(I)I

    .line 75
    goto :goto_70

    .line 62
    .end local v0  # "pid":I
    :cond_6a
    iget-object v0, p0, Lcom/android/server/os/ProcessMemReclaim$1;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {v0}, Lcom/android/server/os/ProcessMemReclaim;->access$000(Lcom/android/server/os/ProcessMemReclaim;)V

    .line 63
    nop

    .line 79
    :goto_70
    return-void
.end method
