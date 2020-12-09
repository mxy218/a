.class Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InteractiveStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    .line 4304
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4305
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4306
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4307
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4308
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 4309
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4310
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 4314
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4315
    :try_start_5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->interactiveStateChangedLocked(Z)V

    .line 4316
    monitor-exit p1

    .line 4317
    return-void

    .line 4316
    :catchall_16
    move-exception p2

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p2
.end method
