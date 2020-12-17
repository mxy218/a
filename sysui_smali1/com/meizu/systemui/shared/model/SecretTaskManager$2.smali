.class Lcom/meizu/systemui/shared/model/SecretTaskManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SecretTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/systemui/shared/model/SecretTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;


# direct methods
.method constructor <init>(Lcom/meizu/systemui/shared/model/SecretTaskManager;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$2;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 129
    invoke-static {}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p0, p0, Lcom/meizu/systemui/shared/model/SecretTaskManager$2;->this$0:Lcom/meizu/systemui/shared/model/SecretTaskManager;

    invoke-virtual {p0, p1}, Lcom/meizu/systemui/shared/model/SecretTaskManager;->updatePayAppList(Landroid/content/Context;)V

    return-void
.end method
