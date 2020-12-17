.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 191
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 192
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/settings/widget/LockDigitView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_11
    const/4 p2, 0x7

    const/4 v0, 0x0

    if-le p1, p2, :cond_1e

    const/16 p2, 0x10

    if-gt p1, p2, :cond_1e

    .line 196
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$102(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    .line 199
    :cond_1e
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_46

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_46

    .line 201
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_46
    const/16 p2, 0x42

    if-ne p1, p2, :cond_61

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 212
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$102(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    .line 213
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;)V

    :cond_61
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 221
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/widget/LockDigitView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
