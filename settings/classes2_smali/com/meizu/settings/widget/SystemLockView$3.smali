.class Lcom/meizu/settings/widget/SystemLockView$3;
.super Ljava/lang/Object;
.source "SystemLockView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/SystemLockView;->setTipAnim(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SystemLockView;

.field final synthetic val$animTV:Landroid/widget/TextView;

.field final synthetic val$tip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SystemLockView;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    .line 625
    iput-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$3;->this$0:Lcom/meizu/settings/widget/SystemLockView;

    iput-object p2, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 645
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 639
    iget-object p1, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$animTV:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/meizu/settings/widget/SystemLockView$3;->val$tip:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
