.class Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Lcom/flyme/systemui/smarttouch/WindowMoveHelper$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
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

    .line 76
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->updateFloatWindow(I)V

    return-void
.end method

.method public imeWillShow(I)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/TargetViewHelper$1;->this$0:Lcom/flyme/systemui/smarttouch/TargetViewHelper;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/TargetViewHelper;->updateFloatWindow(I)V

    return-void
.end method

.method public movedWinHasBeenReset()V
    .registers 1

    return-void
.end method
