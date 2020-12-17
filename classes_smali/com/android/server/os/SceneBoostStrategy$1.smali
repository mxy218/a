.class Lcom/android/server/os/SceneBoostStrategy$1;
.super Landroid/os/Handler;
.source "SceneBoostStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/SceneBoostStrategy;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/SceneBoostStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/os/SceneBoostStrategy;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/os/SceneBoostStrategy;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 93
    iput-object p1, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process msg："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneBoostStrategy"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "boost scene "

    const-string/jumbo v3, "scene"

    packed-switch v0, :pswitch_data_c6

    goto/16 :goto_c4

    .line 120
    :pswitch_25  #0x114
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "wb":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/scene/Scene;

    .line 122
    .local v3, "ws":Landroid/scene/Scene;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v1, v3}, Lcom/android/server/os/SceneBoostStrategy;->access$400(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 124
    goto/16 :goto_c4

    .line 114
    .end local v0  # "wb":Landroid/os/Bundle;
    .end local v3  # "ws":Landroid/scene/Scene;
    :pswitch_4c  #0x113
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    .local v0, "tb":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/scene/Scene;

    .line 116
    .local v3, "ts":Landroid/scene/Scene;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v1, v3}, Lcom/android/server/os/SceneBoostStrategy;->access$300(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 118
    goto :goto_c4

    .line 108
    .end local v0  # "tb":Landroid/os/Bundle;
    .end local v3  # "ts":Landroid/scene/Scene;
    :pswitch_72  #0x112
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "nb":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/scene/Scene;

    .line 110
    .local v3, "ns":Landroid/scene/Scene;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v1, v3}, Lcom/android/server/os/SceneBoostStrategy;->access$200(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 112
    goto :goto_c4

    .line 102
    .end local v0  # "nb":Landroid/os/Bundle;
    .end local v3  # "ns":Landroid/scene/Scene;
    :pswitch_98  #0x111
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/scene/Scene;

    .line 104
    .local v3, "s":Landroid/scene/Scene;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v1, v3}, Lcom/android/server/os/SceneBoostStrategy;->access$100(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 106
    goto :goto_c4

    .line 99
    .end local v0  # "b":Landroid/os/Bundle;
    .end local v3  # "s":Landroid/scene/Scene;
    :pswitch_be  #0x110
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy$1;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v0}, Lcom/android/server/os/SceneBoostStrategy;->access$000(Lcom/android/server/os/SceneBoostStrategy;)V

    .line 100
    nop

    .line 128
    :goto_c4
    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x110
        :pswitch_be  #00000110
        :pswitch_98  #00000111
        :pswitch_72  #00000112
        :pswitch_4c  #00000113
        :pswitch_25  #00000114
    .end packed-switch
.end method
