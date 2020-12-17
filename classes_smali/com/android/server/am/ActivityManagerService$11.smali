.class Lcom/android/server/am/ActivityManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 5567
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 5570
    const-string v0, "delay_delete"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5571
    const-wide/32 v0, 0x493e0

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    .line 5572
    .local v0, "delay":J
    :goto_f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x33

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5573
    return-void
.end method
