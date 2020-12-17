.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;)V
    .registers 2

    .line 1377
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1380
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    .line 1381
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)V

    .line 1382
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$17;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$3800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)V

    return-void
.end method
