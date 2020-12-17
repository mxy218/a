.class Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmOptimizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmOptimizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSavingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmOptimizeStrategy;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmOptimizeStrategy;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/AlarmOptimizeStrategy;

    .line 383
    iput-object p1, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    invoke-static {p1}, Lcom/android/server/AlarmOptimizeStrategy;->access$000(Lcom/android/server/AlarmOptimizeStrategy;)Lcom/android/server/AlarmManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 393
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/AlarmOptimizeStrategy;->access$302(Lcom/android/server/AlarmOptimizeStrategy;Z)Z

    .line 394
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmOptimizeStrategy;->access$402(Lcom/android/server/AlarmOptimizeStrategy;J)J

    goto :goto_4d

    .line 395
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 396
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    invoke-static {v0, v1}, Lcom/android/server/AlarmOptimizeStrategy;->access$302(Lcom/android/server/AlarmOptimizeStrategy;Z)Z

    .line 397
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmOptimizeStrategy;->access$402(Lcom/android/server/AlarmOptimizeStrategy;J)J

    goto :goto_4d

    .line 398
    :cond_36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 399
    iget-object v0, p0, Lcom/android/server/AlarmOptimizeStrategy$PowerSavingReceiver;->this$0:Lcom/android/server/AlarmOptimizeStrategy;

    const-string v2, "connected"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/AlarmOptimizeStrategy;->access$502(Lcom/android/server/AlarmOptimizeStrategy;Z)Z

    .line 401
    :cond_4d
    :goto_4d
    return-void
.end method
