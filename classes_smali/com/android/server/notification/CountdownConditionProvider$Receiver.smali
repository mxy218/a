.class final Lcom/android/server/notification/CountdownConditionProvider$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CountdownConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/CountdownConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/CountdownConditionProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/CountdownConditionProvider;Lcom/android/server/notification/CountdownConditionProvider$1;)V
    .registers 3

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/notification/CountdownConditionProvider$Receiver;-><init>(Lcom/android/server/notification/CountdownConditionProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 149
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 150
    const-string p1, "condition_id"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 151
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result p2

    .line 152
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 153
    invoke-static {}, Lcom/android/server/notification/CountdownConditionProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Countdown condition fired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ConditionProviders.CCP"

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3a
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_4a

    .line 155
    iget-object p1, p0, Lcom/android/server/notification/CountdownConditionProvider$Receiver;->this$0:Lcom/android/server/notification/CountdownConditionProvider;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/android/server/notification/CountdownConditionProvider;->access$300(JZI)Landroid/service/notification/Condition;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 158
    :cond_4a
    return-void
.end method
