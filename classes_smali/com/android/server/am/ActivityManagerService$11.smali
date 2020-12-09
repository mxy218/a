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

    .line 5238
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 5241
    const-string p1, "delay_delete"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 5242
    const-wide/32 p1, 0x493e0

    goto :goto_f

    :cond_d
    const-wide/16 p1, 0x0

    .line 5243
    :goto_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5244
    return-void
.end method
