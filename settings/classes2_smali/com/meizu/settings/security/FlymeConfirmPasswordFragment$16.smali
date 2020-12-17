.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->setPaswordViewEnable(Z)V
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

    .line 1328
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$16;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/settings/utils/MzUtils;->showInputMethod(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
