.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->initBottomLayout(Landroid/view/View;)V
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

    .line 491
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 499
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 501
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 502
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$6;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    :cond_24
    return-void
.end method
