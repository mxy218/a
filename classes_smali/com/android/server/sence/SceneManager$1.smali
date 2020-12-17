.class Lcom/android/server/sence/SceneManager$1;
.super Landroid/os/Handler;
.source "SceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sence/SceneManager;-><init>(Lcom/android/server/sence/SceneService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sence/SceneManager;


# direct methods
.method constructor <init>(Lcom/android/server/sence/SceneManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/sence/SceneManager;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 35
    iput-object p1, p0, Lcom/android/server/sence/SceneManager$1;->this$0:Lcom/android/server/sence/SceneManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SceneManager handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneManager"

    invoke-static {v1, v0}, Landroid/scene/SceneUtils;->logSceneDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1d

    goto :goto_22

    .line 43
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sence/SceneManager$1;->this$0:Lcom/android/server/sence/SceneManager;

    invoke-static {v0}, Lcom/android/server/sence/SceneManager;->access$000(Lcom/android/server/sence/SceneManager;)V

    .line 46
    :goto_22
    return-void
.end method
