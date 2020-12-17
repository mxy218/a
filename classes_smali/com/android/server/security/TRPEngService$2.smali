.class Lcom/android/server/security/TRPEngService$2;
.super Landroid/os/Handler;
.source "TRPEngService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/security/TRPEngService;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/TRPEngService;


# direct methods
.method constructor <init>(Lcom/android/server/security/TRPEngService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/security/TRPEngService;
    .param p2, "x0"  # Landroid/os/Looper;

    .line 379
    iput-object p1, p0, Lcom/android/server/security/TRPEngService$2;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 381
    if-nez p1, :cond_3

    .line 382
    return-void

    .line 384
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_3c

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/android/server/security/TRPEngService$2;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-static {v0}, Lcom/android/server/security/TRPEngService;->access$200(Lcom/android/server/security/TRPEngService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3c

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.ACTION_TRIGGER_DETECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/android/server/security/TRPEngService$2;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-static {v1}, Lcom/android/server/security/TRPEngService;->access$200(Lcom/android/server/security/TRPEngService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/android/server/security/TRPEngService$2;->this$0:Lcom/android/server/security/TRPEngService;

    invoke-static {v1}, Lcom/android/server/security/TRPEngService;->access$300(Lcom/android/server/security/TRPEngService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_3c
    :goto_3c
    return-void
.end method
