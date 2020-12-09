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

    .line 874
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .registers 2

    .line 898
    return-void
.end method

.method public onActivityLaunchFinished([B)V
    .registers 2

    .line 902
    return-void
.end method

.method public onActivityLaunched([BI)V
    .registers 5

    .line 881
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1c

    .line 882
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 883
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 885
    :cond_1c
    return-void
.end method

.method public onIntentFailed()V
    .registers 1

    .line 894
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;)V
    .registers 2

    .line 890
    return-void
.end method
