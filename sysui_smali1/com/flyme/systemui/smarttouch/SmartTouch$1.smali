.class Lcom/flyme/systemui/smarttouch/SmartTouch$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$1;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouchView;->refreshResource()V

    :cond_11
    return-void
.end method
