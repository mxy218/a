.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->verifyAndSaveLockPassword(Ljava/lang/String;)V
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

    .line 581
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 585
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$9;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f120fd2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTipAnimShake(Ljava/lang/String;)V

    return-void
.end method
