.class Lcom/android/server/notification/NotificationUsageStats$1;
.super Landroid/os/Handler;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationUsageStats;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$1;->this$0:Lcom/android/server/notification/NotificationUsageStats;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationUsageStats"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 94
    :cond_1e
    iget-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$1;->this$0:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationUsageStats;->emit()V

    .line 95
    nop

    .line 100
    :goto_24
    return-void
.end method
