.class Lcom/android/server/am/ActivityManagerService$2;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
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

    .line 952
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .registers 2
    .param p1, "abortingActivity"  # [B

    .line 976
    return-void
.end method

.method public onActivityLaunchFinished([B)V
    .registers 2
    .param p1, "finalActivity"  # [B

    .line 980
    return-void
.end method

.method public onActivityLaunched([BI)V
    .registers 7
    .param p1, "activity"  # [B
    .param p2, "temperature"  # I

    .line 959
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 960
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 961
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 963
    .end local v0  # "msg":Landroid/os/Message;
    :cond_1c
    return-void
.end method

.method public onIntentFailed()V
    .registers 1

    .line 972
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"  # Landroid/content/Intent;

    .line 968
    return-void
.end method
