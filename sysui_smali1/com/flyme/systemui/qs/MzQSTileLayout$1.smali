.class Lcom/flyme/systemui/qs/MzQSTileLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzQSTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;->showQsCustomize(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)V
    .registers 3

    .line 367
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iput-boolean p2, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 379
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 380
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 381
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 383
    :cond_1a
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->val$show:Z

    if-nez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x4

    :goto_26
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 370
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 371
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 372
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_24

    .line 373
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$1;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$000(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method
