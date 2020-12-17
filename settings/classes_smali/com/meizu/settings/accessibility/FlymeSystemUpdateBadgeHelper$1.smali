.class Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$1;
.super Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;
.source "FlymeSystemUpdateBadgeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-direct {p0}, Lcom/meizu/flyme/update/IUpdateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateChange(Z)V
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateChange hasUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSystemUpdateBadgeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper$1;->this$0:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->access$000(Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
