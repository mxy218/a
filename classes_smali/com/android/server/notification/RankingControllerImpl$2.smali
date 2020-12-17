.class Lcom/android/server/notification/RankingControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RankingControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/RankingControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/RankingControllerImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/RankingControllerImpl;

    .line 406
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 409
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/notification/RankingControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTimeSetReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 412
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/RankingControllerImpl;->access$902(Lcom/android/server/notification/RankingControllerImpl;J)J

    goto :goto_63

    .line 413
    :cond_2f
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 414
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v3}, Lcom/android/server/notification/RankingControllerImpl;->access$900(Lcom/android/server/notification/RankingControllerImpl;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_63

    .line 415
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/RankingControllerImpl;->access$902(Lcom/android/server/notification/RankingControllerImpl;J)J

    .line 416
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl$2;->this$0:Lcom/android/server/notification/RankingControllerImpl;

    invoke-static {v1}, Lcom/android/server/notification/RankingControllerImpl;->access$1000(Lcom/android/server/notification/RankingControllerImpl;)V

    .line 419
    :cond_63
    :goto_63
    return-void
.end method
