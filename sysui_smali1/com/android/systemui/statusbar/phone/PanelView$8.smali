.class Lcom/android/systemui/statusbar/phone/PanelView$8;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeightExpandAnimation(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .registers 2

    .line 1664
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 4

    .line 1667
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 1668
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    sget p2, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    sget p2, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    .line 1669
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_30

    .line 1670
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    sget p2, Lcom/android/systemui/R$id;->mz_dismiss_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$8;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_30
    return-void
.end method
