.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartTouchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field final synthetic val$fsdUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/net/Uri;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    iput-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->val$fsdUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 63
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 64
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 65
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$002(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 67
    :cond_17
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->val$fsdUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/database/ContentObserver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 69
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "mz_smart_touch_switch"

    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_54

    const/4 v2, 0x1

    :cond_54
    invoke-static {p1, v2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$302(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    .line 70
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$402(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    const-string p1, "flag_change_SmartTouch"

    const-string p2, "re init for USER_SWITCHED"

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$500(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    .line 73
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$400(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onUpdateViews(Z)V

    return-void
.end method
