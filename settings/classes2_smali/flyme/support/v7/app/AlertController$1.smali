.class Lflyme/support/v7/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AlertController;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lflyme/support/v7/app/AlertController$1;->this$0:Lflyme/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 110
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$1;->this$0:Lflyme/support/v7/app/AlertController;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v0, v0, Lflyme/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v0, :cond_f

    .line 111
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    .line 112
    :cond_f
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$1;->this$0:Lflyme/support/v7/app/AlertController;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_1e

    iget-object v0, v0, Lflyme/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v0, :cond_1e

    .line 113
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    .line 114
    :cond_1e
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$1;->this$0:Lflyme/support/v7/app/AlertController;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_2d

    iget-object p1, v0, Lflyme/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz p1, :cond_2d

    .line 115
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_33

    .line 121
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    :cond_33
    iget-object p0, p0, Lflyme/support/v7/app/AlertController$1;->this$0:Lflyme/support/v7/app/AlertController;

    iget-object p1, p0, Lflyme/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lflyme/support/v7/app/AlertController;->mDialog:Lflyme/support/v7/app/AppCompatDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
