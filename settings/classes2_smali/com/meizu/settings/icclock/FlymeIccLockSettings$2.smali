.class Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "FlymeIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/icclock/FlymeIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    const/4 p1, 0x0

    const-string v0, "phone"

    .line 136
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$300(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeIccLockSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$300(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)I

    move-result v1

    if-eq v0, v1, :cond_40

    return-void

    .line 142
    :cond_40
    iget-object v0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {v0, p1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$402(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Z)Z

    const-string p1, "ss"

    .line 143
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ABSENT"

    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$402(Lcom/meizu/settings/icclock/FlymeIccLockSettings;Z)Z

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_74

    .line 148
    :cond_5f
    iget-object p1, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {p1}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$500(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/icclock/FlymeIccLockSettings$2;->this$0:Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    invoke-static {p0}, Lcom/meizu/settings/icclock/FlymeIccLockSettings;->access$500(Lcom/meizu/settings/icclock/FlymeIccLockSettings;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x66

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_74
    :goto_74
    return-void
.end method
