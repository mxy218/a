.class Lcom/android/server/os/SceneBoostStrategy$2;
.super Landroid/scene/SceneReceiver;
.source "SceneBoostStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/os/SceneBoostStrategy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/SceneBoostStrategy;


# direct methods
.method constructor <init>(Lcom/android/server/os/SceneBoostStrategy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/os/SceneBoostStrategy;

    .line 157
    iput-object p1, p0, Lcom/android/server/os/SceneBoostStrategy$2;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-direct {p0}, Landroid/scene/SceneReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Landroid/scene/Scene;)V
    .registers 4
    .param p1, "scene"  # Landroid/scene/Scene;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneBoostStrategy onReceiver scene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Landroid/scene/Scene;->getSceneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/scene/Scene;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "SceneBoostStrategy"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/os/SceneBoostStrategy$2;->this$0:Lcom/android/server/os/SceneBoostStrategy;

    invoke-static {v0, p1}, Lcom/android/server/os/SceneBoostStrategy;->access$500(Lcom/android/server/os/SceneBoostStrategy;Landroid/scene/Scene;)V

    .line 163
    return-void
.end method
