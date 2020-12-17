.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->updateFingerprintTimeoutTips(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

.field final synthetic val$countDownTime:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V
    .registers 3

    .line 1466
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iput p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->val$countDownTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1469
    iget v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->val$countDownTime:I

    if-eqz v0, :cond_18

    .line 1470
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 1471
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->val$countDownTime:I

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;II)V

    .line 1474
    :cond_18
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$18;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3002(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    return-void
.end method
