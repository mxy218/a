.class Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserActionsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"  # Lcom/android/server/usage/UsageStatsService$1;

    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 324
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 325
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 327
    if-ltz v0, :cond_93

    .line 328
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_93

    .line 330
    :cond_23
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 331
    if-ltz v0, :cond_93

    .line 332
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    goto :goto_93

    .line 336
    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Screen"

    if-eqz v2, :cond_66

    .line 337
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/server/usage/UsageStatsService;->access$302(Lcom/android/server/usage/UsageStatsService;Z)Z

    .line 339
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 340
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 345
    const/16 v4, 0x65

    iput v4, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 346
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 348
    .end local v2  # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_93

    .line 349
    :cond_66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 350
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$302(Lcom/android/server/usage/UsageStatsService;Z)Z

    .line 352
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 353
    .restart local v2  # "event":Landroid/app/usage/UsageEvents$Event;
    iput-object v4, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 358
    const/16 v4, 0x64

    iput v4, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 359
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 363
    .end local v2  # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_93
    :goto_93
    return-void
.end method
