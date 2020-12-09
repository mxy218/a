.class Lcom/android/server/usage/UsageStatsService$2;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitReached(IIJJLandroid/app/PendingIntent;)V
    .registers 9

    .line 196
    if-nez p7, :cond_3

    return-void

    .line 197
    :cond_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 198
    const-string v0, "android.app.usage.extra.OBSERVER_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string p1, "android.app.usage.extra.TIME_LIMIT"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    const-string p1, "android.app.usage.extra.TIME_USED"

    invoke-virtual {p2, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    :try_start_17
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p7, p1, p3, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_21
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_21} :catch_22

    .line 206
    goto :goto_39

    .line 203
    :catch_22
    move-exception p1

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t deliver callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_39
    return-void
.end method

.method public onSessionEnd(IIJLandroid/app/PendingIntent;)V
    .registers 7

    .line 212
    if-nez p5, :cond_3

    return-void

    .line 213
    :cond_3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 214
    const-string v0, "android.app.usage.extra.OBSERVER_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string p1, "android.app.usage.extra.TIME_USED"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    :try_start_12
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p5, p1, p3, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 221
    goto :goto_34

    .line 218
    :catch_1d
    move-exception p1

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t deliver callback: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_34
    return-void
.end method
