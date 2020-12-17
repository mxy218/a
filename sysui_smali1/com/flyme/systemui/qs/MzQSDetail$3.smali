.class Lcom/flyme/systemui/qs/MzQSDetail$3;
.super Ljava/lang/Object;
.source "MzQSDetail.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSDetail;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSDetail;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSDetail;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .line 238
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 239
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 241
    :cond_17
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-eqz p1, :cond_2c

    .line 242
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2c
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .line 222
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    .line 223
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 225
    :cond_17
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-eq p1, v1, :cond_2c

    .line 226
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 228
    :cond_2c
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 229
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetailStateChanged(Z)V

    .line 230
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    instance-of p1, p1, Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p1, :cond_62

    .line 231
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$000(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/qs/MzQSTileLayout;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$3;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$500(Lcom/flyme/systemui/qs/MzQSDetail;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setGridContentAlpha(ZI)V

    :cond_62
    return-void
.end method
