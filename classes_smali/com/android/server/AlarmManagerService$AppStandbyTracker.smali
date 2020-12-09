.class final Lcom/android/server/AlarmManagerService$AppStandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppStandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4434
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .registers 3

    .line 4434
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .registers 6

    .line 4443
    iget-object p3, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p3, p3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 p4, 0x5

    invoke-virtual {p3, p4}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4444
    iget-object p3, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p3, p3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 p5, -0x1

    invoke-virtual {p3, p4, p2, p5, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4445
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4446
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .registers 4

    .line 4453
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4454
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4455
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AppStandbyTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 4456
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4455
    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4456
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4457
    return-void
.end method
