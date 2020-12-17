.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->drawLineAnimation(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

.field final synthetic val$drawRedLine:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V
    .registers 3

    .line 408
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iput-boolean p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;->val$drawRedLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 411
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;->val$drawRedLine:Z

    if-eqz v0, :cond_a

    .line 412
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    goto :goto_f

    .line 414
    :cond_a
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$5;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    :goto_f
    return-void
.end method
