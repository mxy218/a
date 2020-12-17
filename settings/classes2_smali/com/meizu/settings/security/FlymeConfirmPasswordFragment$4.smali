.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->testAlpha()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

.field final synthetic val$alphaSeekbar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Landroid/widget/SeekBar;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;->val$alphaSeekbar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 333
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$712(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I

    .line 334
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;->val$alphaSeekbar:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$4;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
