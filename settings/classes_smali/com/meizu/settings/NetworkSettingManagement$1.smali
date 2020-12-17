.class Lcom/meizu/settings/NetworkSettingManagement$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkSettingManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/NetworkSettingManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/NetworkSettingManagement;


# direct methods
.method constructor <init>(Lcom/meizu/settings/NetworkSettingManagement;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/meizu/settings/NetworkSettingManagement$1;->this$0:Lcom/meizu/settings/NetworkSettingManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    const/4 p1, 0x1

    const-string/jumbo v0, "ss"

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive ACTION_SIM_STATE_CHANGED SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkSettingManagement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/meizu/settings/NetworkSettingManagement$1;->this$0:Lcom/meizu/settings/NetworkSettingManagement;

    invoke-static {p1}, Lcom/meizu/settings/NetworkSettingManagement;->access$000(Lcom/meizu/settings/NetworkSettingManagement;)V

    const-string p1, "ABSENT"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 73
    iget-object p0, p0, Lcom/meizu/settings/NetworkSettingManagement$1;->this$0:Lcom/meizu/settings/NetworkSettingManagement;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/NetworkSettingManagement;->access$100(Lcom/meizu/settings/NetworkSettingManagement;Z)V

    :cond_46
    return-void
.end method
