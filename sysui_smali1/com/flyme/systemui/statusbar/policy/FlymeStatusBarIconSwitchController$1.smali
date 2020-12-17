.class Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;
.super Landroid/database/ContentObserver;
.source "FlymeStatusBarIconSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;Landroid/os/Handler;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 35
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_6

    return-void

    .line 37
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 38
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->access$000()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 39
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->access$000()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->access$100(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 41
    :goto_2f
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->access$200()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "flyme.intent.action.ICON_SWITCH_STATE_CHANGED"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "slot"

    .line 44
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController$1;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;->access$300(Lcom/flyme/systemui/statusbar/policy/FlymeStatusBarIconSwitchController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_53
    return-void
.end method
