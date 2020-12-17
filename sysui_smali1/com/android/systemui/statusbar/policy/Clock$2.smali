.class Lcom/android/systemui/statusbar/policy/Clock$2;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$Clock$2(Ljava/lang/String;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$302(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 246
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/Clock;->access$300(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_28
    return-void
.end method

.method public synthetic lambda$onReceive$1$Clock$2(Ljava/util/Locale;)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Clock;->access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$102(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;

    .line 254
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public synthetic lambda$onReceive$2$Clock$2()V
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo p1, "time-zone"

    .line 242
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$NVwlBsd8V0hLupY9sb0smFA7zNw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$NVwlBsd8V0hLupY9sb0smFA7zNw;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_44

    :cond_22
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 249
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 251
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p2}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/util/Locale;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$mOTwR4Tu5xrxBBIUbNE9701lx-4;-><init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
