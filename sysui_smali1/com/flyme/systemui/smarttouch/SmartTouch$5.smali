.class Lcom/flyme/systemui/smarttouch/SmartTouch$5;
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

    .line 129
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 132
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    if-nez v0, :cond_5

    return-void

    .line 135
    :cond_5
    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isShowState()Z

    move-result v0

    const-string v1, "SmartTouch"

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "show when screenshot"

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$5;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-virtual {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->toVisible()V

    goto :goto_37

    .line 139
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not show screenshot "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->smartTouch:Lcom/flyme/systemui/smarttouch/SmartTouch;

    sget-object v0, Lcom/flyme/systemui/smarttouch/SmartTouch;->sShowStateHelper:Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;

    invoke-virtual {v0}, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method
