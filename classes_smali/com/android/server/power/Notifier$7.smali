.class Lcom/android/server/power/Notifier$7;
.super Landroid/content/BroadcastReceiver;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 785
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 786
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v3}, Lcom/android/server/power/Notifier;->access$500(Lcom/android/server/power/Notifier;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, p2

    const/4 p2, 0x2

    aput-object v0, p1, p2

    .line 785
    const/16 p2, 0xaa6

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 787
    iget-object p1, p0, Lcom/android/server/power/Notifier$7;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p1}, Lcom/android/server/power/Notifier;->access$600(Lcom/android/server/power/Notifier;)V

    .line 788
    return-void
.end method
