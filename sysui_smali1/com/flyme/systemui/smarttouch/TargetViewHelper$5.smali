.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;
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

    .line 202
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 205
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$5;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->access$200(Lcom/flyme/systemui/smarttouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
