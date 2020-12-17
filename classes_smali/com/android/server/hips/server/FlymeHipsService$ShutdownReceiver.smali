.class public Lcom/android/server/hips/server/FlymeHipsService$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/FlymeHipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutdownReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 174
    :try_start_0
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hips/security/SecurityMargin;->changeSMSToDefault()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 177
    goto :goto_10

    .line 175
    :catch_8
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Interception"

    const-string v2, "Unable to change SMS to default!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_10
    return-void
.end method
