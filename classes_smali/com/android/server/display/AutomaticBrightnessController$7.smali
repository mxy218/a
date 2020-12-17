.class Lcom/android/server/display/AutomaticBrightnessController$7;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 1656
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1659
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1660
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2302(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1661
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/hbm/HBMController;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1664
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/hbm/HBMController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/hbm/HBMController;->setHBMEnabled(ZZ)V

    .line 1666
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1670
    :cond_56
    return-void
.end method
