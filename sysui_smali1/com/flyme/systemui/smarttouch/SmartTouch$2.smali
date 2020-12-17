.class Lcom/flyme/systemui/smarttouch/SmartTouch$2;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;->toGone()V
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

    .line 99
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$2;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
