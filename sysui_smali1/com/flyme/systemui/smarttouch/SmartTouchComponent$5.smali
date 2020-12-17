.class Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;
.super Landroid/database/ContentObserver;
.source "SmartTouchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Landroid/os/Handler;)V
    .registers 3

    .line 178
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 181
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result p1

    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_smart_touch_switch"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    if-eq p1, v1, :cond_2e

    .line 183
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$300(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$302(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;Z)Z

    .line 184
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$700(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    goto :goto_33

    .line 187
    :cond_2e
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouchComponent$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->access$800(Lcom/flyme/systemui/smarttouch/SmartTouchComponent;)V

    :goto_33
    return-void
.end method
