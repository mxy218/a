.class Lcom/android/server/os/DynamicGameDensity$1;
.super Landroid/scene/SceneReceiver;
.source "DynamicGameDensity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/DynamicGameDensity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/DynamicGameDensity;


# direct methods
.method constructor <init>(Lcom/android/server/os/DynamicGameDensity;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/DynamicGameDensity;

    .line 36
    iput-object p1, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-direct {p0}, Landroid/scene/SceneReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Landroid/scene/Scene;)V
    .registers 13
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 39
    const-string/jumbo v0, "x"

    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    const-string/jumbo v2, "package_name"

    const-string v3, "DynamicGameDensity"

    const/4 v4, 0x0

    const v5, 0x1000002

    if-ne v1, v5, :cond_144

    .line 40
    invoke-virtual {p1, v2}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "game":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DynamicGameDensity received app resume scene for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz v1, :cond_143

    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    iget-object v2, v2, Lcom/android/server/os/DynamicGameDensity;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 43
    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v2, v1}, Lcom/android/server/os/DynamicGameDensity;->access$002(Lcom/android/server/os/DynamicGameDensity;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    iget-object v2, v2, Lcom/android/server/os/DynamicGameDensity;->mStrategyConfig:Lcom/android/server/os/StrategyConfig;

    invoke-virtual {v2}, Lcom/android/server/os/StrategyConfig;->getConfig()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 45
    .local v2, "c":[Ljava/lang/String;
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 46
    .local v5, "density":I
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 47
    .local v6, "w":I
    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 48
    .local v7, "h":I
    iget-object v8, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    invoke-static {v8, v9}, Lcom/android/server/os/DynamicGameDensity;->access$102(Lcom/android/server/os/DynamicGameDensity;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 49
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 51
    .local v8, "baseSize":Landroid/graphics/Point;
    :try_start_74
    iget-object v9, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v9}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v10}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 52
    iget-object v9, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v9}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v9

    invoke-interface {v9, v4, v8}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Physical size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v10}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v10}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v9, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v9}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e0

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Override size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_e0
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    iget-object v9, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v9}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v9

    invoke-interface {v9, v4}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v9

    invoke-static {v0, v9}, Lcom/android/server/os/DynamicGameDensity;->access$302(Lcom/android/server/os/DynamicGameDensity;I)I

    .line 59
    iget-object v0, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v0}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    move-result v0

    .line 60
    .local v0, "baseDensity":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Physical density: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v10}, Lcom/android/server/os/DynamicGameDensity;->access$300(Lcom/android/server/os/DynamicGameDensity;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v9, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v9}, Lcom/android/server/os/DynamicGameDensity;->access$300(Lcom/android/server/os/DynamicGameDensity;)I

    move-result v9

    if-eq v9, v0, :cond_12f

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Override density: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_12f
    if-lez v6, :cond_13e

    if-lez v7, :cond_13e

    if-lez v5, :cond_13e

    .line 66
    iget-object v3, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v3}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/IWindowManager;->setForcedDisplayDensityAndSize(IIII)V
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_13e} :catch_13f

    .line 70
    .end local v0  # "baseDensity":I
    :cond_13e
    goto :goto_143

    .line 68
    :catch_13f
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v1  # "game":Ljava/lang/String;
    .end local v2  # "c":[Ljava/lang/String;
    .end local v5  # "density":I
    .end local v6  # "w":I
    .end local v7  # "h":I
    .end local v8  # "baseSize":Landroid/graphics/Point;
    :cond_143
    :goto_143
    goto :goto_19d

    .line 73
    :cond_144
    invoke-virtual {p1, v2}, Landroid/scene/Scene;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "game":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DynamicGameDensity received app pause scene for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v1}, Lcom/android/server/os/DynamicGameDensity;->access$000(Lcom/android/server/os/DynamicGameDensity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19d

    if-eqz v0, :cond_19d

    iget-object v1, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v1}, Lcom/android/server/os/DynamicGameDensity;->access$000(Lcom/android/server/os/DynamicGameDensity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 76
    iget-object v1, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v1}, Lcom/android/server/os/DynamicGameDensity;->access$300(Lcom/android/server/os/DynamicGameDensity;)I

    move-result v1

    .line 77
    .local v1, "density":I
    iget-object v2, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v2}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 78
    .local v2, "w":I
    iget-object v3, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v3}, Lcom/android/server/os/DynamicGameDensity;->access$100(Lcom/android/server/os/DynamicGameDensity;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 80
    .local v3, "h":I
    if-lez v2, :cond_19d

    if-lez v3, :cond_19d

    if-lez v1, :cond_19d

    .line 81
    :try_start_18e
    iget-object v5, p0, Lcom/android/server/os/DynamicGameDensity$1;->this$0:Lcom/android/server/os/DynamicGameDensity;

    invoke-static {v5}, Lcom/android/server/os/DynamicGameDensity;->access$200(Lcom/android/server/os/DynamicGameDensity;)Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5, v4, v1, v2, v3}, Landroid/view/IWindowManager;->setForcedDisplayDensityAndSize(IIII)V
    :try_end_197
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_197} :catch_198

    goto :goto_19d

    .line 83
    :catch_198
    move-exception v4

    .line 84
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    nop

    .line 88
    .end local v0  # "game":Ljava/lang/String;
    .end local v1  # "density":I
    .end local v2  # "w":I
    .end local v3  # "h":I
    .end local v4  # "e":Landroid/os/RemoteException;
    :cond_19d
    :goto_19d
    return-void
.end method
