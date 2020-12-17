.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 205
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$1;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$500(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
