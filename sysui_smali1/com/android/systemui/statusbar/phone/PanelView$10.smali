.class Lcom/android/systemui/statusbar/phone/PanelView$10;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
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

    .line 1741
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    if-nez p2, :cond_11

    .line 1745
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 1746
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1748
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->access$702(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1749
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView$10;->this$0:Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method
