.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_22

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SystemLockView;->getEnteredPassword()V

    goto :goto_33

    .line 121
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 122
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/widget/LockDigitView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_15

    .line 130
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 131
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$2;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/LockDigitView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/widget/LockDigitView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
