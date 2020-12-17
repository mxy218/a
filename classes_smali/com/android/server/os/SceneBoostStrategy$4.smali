.class Lcom/android/server/os/SceneBoostStrategy$4;
.super Landroid/database/ContentObserver;
.source "SceneBoostStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/SceneBoostStrategy;->doBoost(Landroid/scene/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/SceneBoostStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/os/SceneBoostStrategy;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 472
    iput-object p1, p0, Lcom/android/server/os/SceneBoostStrategy$4;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"  # Z

    .line 475
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy$4;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    iget-object v0, v0, Lcom/android/server/os/SceneBoostStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "mz_game_mode_accelerate_full"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 478
    .local v0, "enabled":I
    invoke-static {}, Lcom/android/server/os/SceneBoostStrategy;->access$700()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 479
    const-string v2, "GameNormal"

    const v3, 0x1000017

    if-lez v0, :cond_30

    .line 480
    new-instance v4, Landroid/scene/Scene;

    .line 481
    invoke-static {}, Lcom/android/server/os/SceneBoostStrategy;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5, v0}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v2, v4

    .line 482
    .local v2, "scene":Landroid/scene/Scene;
    iget-object v3, p0, Lcom/android/server/os/SceneBoostStrategy$4;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v3, v2, v1}, Lcom/android/server/os/SceneBoostStrategy;->access$600(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;Z)V

    .line 483
    .end local v2  # "scene":Landroid/scene/Scene;
    goto :goto_3f

    .line 484
    :cond_30
    new-instance v1, Landroid/scene/Scene;

    .line 485
    invoke-static {}, Lcom/android/server/os/SceneBoostStrategy;->access$700()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/scene/Scene;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 486
    .local v1, "ns":Landroid/scene/Scene;
    iget-object v2, p0, Lcom/android/server/os/SceneBoostStrategy$4;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v2, v1}, Lcom/android/server/os/SceneBoostStrategy;->access$800(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 489
    .end local v1  # "ns":Landroid/scene/Scene;
    :cond_3f
    :goto_3f
    return-void
.end method
