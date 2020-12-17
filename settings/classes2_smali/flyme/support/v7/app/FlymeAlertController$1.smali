.class Lflyme/support/v7/app/FlymeAlertController$1;
.super Ljava/lang/Object;
.source "FlymeAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/FlymeAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/FlymeAlertController;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/FlymeAlertController;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$1;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$1;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iget-object v1, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v0, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_f

    .line 124
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    .line 125
    :cond_f
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$1;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iget-object v1, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_1e

    iget-object v0, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_1e

    .line 126
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    .line 127
    :cond_1e
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$1;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iget-object v1, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_2d

    iget-object p1, v0, Lflyme/support/v7/app/FlymeAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz p1, :cond_2d

    .line 128
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    .line 134
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 138
    :cond_33
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController$1;->this$0:Lflyme/support/v7/app/FlymeAlertController;

    iget-object p1, p0, Lflyme/support/v7/app/FlymeAlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
