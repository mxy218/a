.class final Lcom/android/server/LocationManagerService$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .line 4344
    iput-object p1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/LocationManagerService;
    .param p2, "x1"  # Lcom/android/server/LocationManagerService$1;

    .line 4344
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$NetworkStateReceiver;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 4347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStateReceiver intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    iget-object v0, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4349
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "choose_network_provider_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4351
    .local v1, "network_provider_mode":Ljava/lang/String;
    const-string v2, "auto"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 4352
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "not auto mode just return"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    monitor-exit v0

    return-void

    .line 4355
    :cond_3f
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 4356
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 4357
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "voiceRegState"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 4358
    .local v3, "state":I
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SERVICE_STATE_CHANGED state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4359
    if-eq v3, v4, :cond_87

    .line 4360
    iget-object v4, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/LocationManagerService;->doTelephonyServiceStateChanged(Landroid/content/Intent;)V

    goto :goto_87

    .line 4363
    .end local v2  # "bundle":Landroid/os/Bundle;
    .end local v3  # "state":I
    :cond_75
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 4364
    iget-object v2, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v2, p2}, Lcom/android/server/LocationManagerService;->doTelephonyServiceStateChanged(Landroid/content/Intent;)V

    goto :goto_88

    .line 4363
    :cond_87
    :goto_87
    nop

    .line 4367
    .end local v1  # "network_provider_mode":Ljava/lang/String;
    :goto_88
    monitor-exit v0

    .line 4368
    return-void

    .line 4367
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_1d .. :try_end_8c} :catchall_8a

    throw v1
.end method
