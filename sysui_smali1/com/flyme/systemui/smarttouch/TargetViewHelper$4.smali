.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$4;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->access$200(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Landroid/os/Message;->what:I

    .line 179
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
