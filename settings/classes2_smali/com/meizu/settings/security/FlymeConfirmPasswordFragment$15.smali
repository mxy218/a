.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setVerifyErrorTip(I)V
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

    .line 1283
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1287
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    goto :goto_29

    .line 1289
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$15;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void
.end method
