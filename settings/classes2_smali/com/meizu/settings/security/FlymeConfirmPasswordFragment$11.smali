.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "FlymeConfirmPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

.field final synthetic val$actionCancelGestureView:Ljava/lang/String;

.field final synthetic val$actionShowGestureView:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 733
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->val$actionShowGestureView:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->val$actionCancelGestureView:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 737
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmPasswordMeizu"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    .line 739
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p1, "Lock"

    .line 740
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "off"

    .line 742
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 743
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5f

    .line 745
    :cond_42
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->val$actionShowGestureView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 746
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V

    goto :goto_5f

    .line 747
    :cond_51
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->val$actionCancelGestureView:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 748
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$11;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V

    :cond_5f
    :goto_5f
    return-void
.end method
