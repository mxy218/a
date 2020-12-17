.class public Lcom/android/server/hips/server/FlymeHipsService$IntelligentBackgroundReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeHipsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/server/FlymeHipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntelligentBackgroundReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 162
    :try_start_0
    invoke-static {p1}, Lcom/android/server/hips/intercept/Interception;->updateInterceptionItem(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 165
    goto :goto_c

    .line 163
    :catch_4
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Interception"

    const-string v2, "Unable to update intelligent background data!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method
