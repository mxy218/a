.class Lcom/flyme/systemui/qs/MzQSDetail$4;
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

    .line 251
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$600(Lcom/flyme/systemui/qs/MzQSDetail;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .line 254
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    .line 255
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$300(Lcom/flyme/systemui/qs/MzQSDetail;)Lcom/flyme/systemui/qs/ArrowView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 257
    :cond_17
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-eq p1, v1, :cond_2c

    .line 258
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSDetail$4;->this$0:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->access$400(Lcom/flyme/systemui/qs/MzQSDetail;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2c
    return-void
.end method
