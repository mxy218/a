.class final Lcom/android/server/wm/FactoryErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "FactoryErrorDialog.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 5

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/wm/FactoryErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FactoryErrorDialog$1;-><init>(Lcom/android/server/wm/FactoryErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FactoryErrorDialog;->setCancelable(Z)V

    .line 31
    const v1, 0x1040282

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/FactoryErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/server/wm/FactoryErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 33
    nop

    .line 34
    const p2, 0x1040285

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/FactoryErrorDialog;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 33
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/FactoryErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 37
    const-string p2, "Factory Error"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/FactoryErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    .line 42
    return-void
.end method
