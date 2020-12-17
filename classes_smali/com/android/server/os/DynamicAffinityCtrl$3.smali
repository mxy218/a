.class Lcom/android/server/os/DynamicAffinityCtrl$3;
.super Landroid/scene/SceneReceiver;
.source "DynamicAffinityCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/DynamicAffinityCtrl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/DynamicAffinityCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/os/DynamicAffinityCtrl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/DynamicAffinityCtrl;

    .line 116
    iput-object p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$3;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-direct {p0}, Landroid/scene/SceneReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Landroid/scene/Scene;)V
    .registers 6
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 119
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v0

    const v1, 0x1000004

    if-ne v0, v1, :cond_56

    .line 120
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneType()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "game":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicAffinityCtrl received app resume scene for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicAffinityCtrl"

    invoke-static {v2, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl$3;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    iget-object v1, v1, Lcom/android/server/os/DynamicAffinityCtrl;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v1}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 123
    iget-object v1, p0, Lcom/android/server/os/DynamicAffinityCtrl$3;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    iget-object v1, v1, Lcom/android/server/os/DynamicAffinityCtrl;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v1}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 124
    .local v1, "c":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl$3;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/os/DynamicAffinityCtrl;->access$702(Lcom/android/server/os/DynamicAffinityCtrl;I)I

    .line 125
    iget-object v2, p0, Lcom/android/server/os/DynamicAffinityCtrl$3;->this$0:Lcom/android/server/os/DynamicAffinityCtrl;

    invoke-static {v2, v0}, Lcom/android/server/os/DynamicAffinityCtrl;->access$1000(Lcom/android/server/os/DynamicAffinityCtrl;Ljava/lang/String;)V

    .line 128
    .end local v0  # "game":Ljava/lang/String;
    .end local v1  # "c":[Ljava/lang/String;
    :cond_56
    return-void
.end method
