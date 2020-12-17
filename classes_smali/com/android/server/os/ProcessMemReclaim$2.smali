.class Lcom/android/server/os/ProcessMemReclaim$2;
.super Landroid/scene/SceneReceiver;
.source "ProcessMemReclaim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/ProcessMemReclaim;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/ProcessMemReclaim;


# direct methods
.method constructor <init>(Lcom/android/server/os/ProcessMemReclaim;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/ProcessMemReclaim;

    .line 92
    iput-object p1, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-direct {p0}, Landroid/scene/SceneReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Landroid/scene/Scene;)V
    .registers 9
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 95
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v0

    const/16 v1, 0x111

    const/4 v2, -0x1

    const-string/jumbo v3, "pid"

    const-string/jumbo v4, "package_name"

    const-string v5, "ProcessMemReclaim"

    const v6, 0x1000005

    if-ne v0, v6, :cond_7c

    .line 96
    invoke-virtual {p1, v4}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p1, v3, v2}, Landroid/scene/Scene;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessMemReclaim received app pause scene for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    iget-object v3, v3, Lcom/android/server/os/ProcessMemReclaim;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v3}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 100
    if-lez v2, :cond_7b

    .line 101
    invoke-static {v2}, Lcom/android/server/os/ProcessMemReclaim;->access$802(I)I

    .line 102
    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$700()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/os/ProcessMemReclaim;->access$102(I)I

    .line 103
    iget-object v3, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {v3}, Lcom/android/server/os/ProcessMemReclaim;->access$900(Lcom/android/server/os/ProcessMemReclaim;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProcessMemReclaim reclaim pid："

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$1000()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/os/ProcessMemReclaim;->access$500(Lcom/android/server/os/ProcessMemReclaim;IJ)V

    .line 106
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    sget-object v3, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMING:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    invoke-static {v1, v3}, Lcom/android/server/os/ProcessMemReclaim;->access$602(Lcom/android/server/os/ProcessMemReclaim;Lcom/android/server/os/ProcessMemReclaim$ReclaimState;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 109
    .end local v0  # "app":Ljava/lang/String;
    .end local v2  # "pid":I
    :cond_7b
    goto :goto_b8

    .line 110
    :cond_7c
    invoke-virtual {p1, v4}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0  # "app":Ljava/lang/String;
    invoke-virtual {p1, v3, v2}, Landroid/scene/Scene;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 112
    .restart local v2  # "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProcessMemReclaim received app resume scene for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/android/server/os/ProcessMemReclaim;->access$800()I

    move-result v3

    if-ne v2, v3, :cond_b8

    iget-object v3, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {v3}, Lcom/android/server/os/ProcessMemReclaim;->access$600(Lcom/android/server/os/ProcessMemReclaim;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    move-result-object v3

    sget-object v4, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMING:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    if-ne v3, v4, :cond_b8

    .line 114
    iget-object v3, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    invoke-static {v3}, Lcom/android/server/os/ProcessMemReclaim;->access$900(Lcom/android/server/os/ProcessMemReclaim;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Lcom/android/server/os/ProcessMemReclaim$2;->this$0:Lcom/android/server/os/ProcessMemReclaim;

    sget-object v3, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->UNRECLAIM:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    invoke-static {v1, v3}, Lcom/android/server/os/ProcessMemReclaim;->access$602(Lcom/android/server/os/ProcessMemReclaim;Lcom/android/server/os/ProcessMemReclaim$ReclaimState;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 118
    .end local v0  # "app":Ljava/lang/String;
    .end local v2  # "pid":I
    :cond_b8
    :goto_b8
    return-void
.end method
