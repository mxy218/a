.class Lcom/android/server/display/hbm/HBMController$3;
.super Landroid/content/BroadcastReceiver;
.source "HBMController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/hbm/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/hbm/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/display/hbm/HBMController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/hbm/HBMController;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/hbm/HBMController$3;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v1, "flyme.intent.action.HBM_SETUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 124
    iget-object v1, p0, Lcom/android/server/display/hbm/HBMController$3;->this$0:Lcom/android/server/display/hbm/HBMController;

    invoke-static {v1}, Lcom/android/server/display/hbm/HBMController;->access$700(Lcom/android/server/display/hbm/HBMController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 125
    .local v1, "nmgr":Landroid/app/NotificationManager;
    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    .end local v1  # "nmgr":Landroid/app/NotificationManager;
    :cond_20
    return-void
.end method
