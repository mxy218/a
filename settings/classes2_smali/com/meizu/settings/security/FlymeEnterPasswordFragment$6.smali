.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->updateViewToComplexPassword()V
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

    .line 385
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 388
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$500(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->setKeyPadType(I)V

    .line 389
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    return-void
.end method
