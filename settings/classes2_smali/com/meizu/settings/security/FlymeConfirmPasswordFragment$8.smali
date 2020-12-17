.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;
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

    .line 527
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 531
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 532
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x20800000

    .line 533
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 535
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_32

    .line 537
    :cond_23
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    .line 538
    invoke-virtual {p1, p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFlymeAccountVerify(Landroid/app/Fragment;)V

    :goto_32
    return-void
.end method
