.class Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "SmartTouchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/os/Handler;)V
    .registers 3

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 35
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 36
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_smart_touch_switch"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-static {p1, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->access$002(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z

    .line 39
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V

    return-void
.end method
