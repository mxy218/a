.class Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .registers 2

    .line 330
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 333
    sget-boolean p1, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p1, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConditionProviders.SCP"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 335
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p1}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object p1

    monitor-enter p1

    .line 336
    :try_start_32
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p2}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 337
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/ScheduleConditionProvider;->access$000(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ScheduleCalendar;

    .line 338
    if-eqz v0, :cond_65

    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 341
    :cond_65
    goto :goto_40

    .line 342
    :cond_66
    monitor-exit p1

    goto :goto_6b

    :catchall_68
    move-exception p2

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_32 .. :try_end_6a} :catchall_68

    throw p2

    .line 344
    :cond_6b
    :goto_6b
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p1}, Lcom/android/server/notification/ScheduleConditionProvider;->access$100(Lcom/android/server/notification/ScheduleConditionProvider;)V

    .line 345
    return-void
.end method
