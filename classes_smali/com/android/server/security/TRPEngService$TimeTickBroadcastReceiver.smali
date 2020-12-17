.class Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TRPEngService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/TRPEngService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeTickBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 927
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/TRPEngService$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/security/TRPEngService$1;

    .line 927
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 930
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz p2, :cond_2d

    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$800()Lcom/android/server/security/TrpVectorManager;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_2d

    .line 933
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 937
    .local v1, "currentTime":J
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 938
    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/android/server/security/TRPEngService;->access$800()Lcom/android/server/security/TrpVectorManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/security/TrpVectorManager;->onTimeTick(J)V

    .line 941
    :cond_2c
    return-void

    .line 931
    .end local v0  # "action":Ljava/lang/String;
    .end local v1  # "currentTime":J
    :cond_2d
    :goto_2d
    return-void
.end method
