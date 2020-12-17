.class Lcom/android/systemui/statusbar/policy/DateView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$DateView$1()V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/policy/DateView;->access$002(Lcom/android/systemui/statusbar/policy/DateView;Landroid/icu/text/DateFormat;)Landroid/icu/text/DateFormat;

    return-void
.end method

.method public synthetic lambda$onReceive$1$DateView$1()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DateView;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.TIME_TICK"

    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    if-nez p2, :cond_24

    const-string p2, "android.intent.action.TIME_SET"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 55
    :cond_24
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 58
    :cond_30
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$I-3qZI4QmwEIAfQqo2b2oUNiPII;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$I-3qZI4QmwEIAfQqo2b2oUNiPII;-><init>(Lcom/android/systemui/statusbar/policy/DateView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_3e
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DateView$1;->this$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$v1y3JoGtv68dyea2Bk7AdwrkpMI;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$1$v1y3JoGtv68dyea2Bk7AdwrkpMI;-><init>(Lcom/android/systemui/statusbar/policy/DateView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4c
    return-void
.end method
