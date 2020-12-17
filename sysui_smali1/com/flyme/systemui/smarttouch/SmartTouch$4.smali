.class Lcom/flyme/systemui/smarttouch/SmartTouch$4;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;->hide()V
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

    .line 120
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "SmartTouch"

    const-string v1, "hide when lid dismiss"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 126
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$4;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$000(Lcom/flyme/systemui/smarttouch/SmartTouch;)Lcom/flyme/systemui/smarttouch/SmartTouchView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
