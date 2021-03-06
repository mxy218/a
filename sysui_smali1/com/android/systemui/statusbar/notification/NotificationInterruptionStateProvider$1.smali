.class Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;
.super Landroid/database/ContentObserver;
.source "NotificationInterruptionStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Landroid/os/Handler;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    .line 124
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->access$000(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 126
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "heads_up_notifications_enabled"

    .line 125
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heads up is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    if-eqz v1, :cond_33

    const-string v1, "enabled"

    goto :goto_35

    :cond_33
    const-string v1, "disabled"

    :goto_35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterruptionStateProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    if-eq v0, v2, :cond_74

    if-eqz v2, :cond_55

    .line 133
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->addToWindow()V

    goto :goto_60

    .line 135
    :cond_55
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->removeFromWindow()V

    .line 138
    :goto_60
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    if-nez p1, :cond_74

    const-string p1, "dismissing any existing heads up notification on disable event"

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;->this$0:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->access$200(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_74
    return-void
.end method
