.class Lcom/flyme/systemui/qs/MzQSTileLayout$3;
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


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$3;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 408
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 409
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$3;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-eqz p1, :cond_1a

    .line 410
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$3;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 402
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 403
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$3;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$100(Lcom/flyme/systemui/qs/MzQSTileLayout;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
