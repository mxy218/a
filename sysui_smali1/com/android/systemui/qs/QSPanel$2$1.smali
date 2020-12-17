.class Lcom/android/systemui/qs/QSPanel$2$1;
.super Landroid/view/View$DragShadowBuilder;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSPanel$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel$2;Landroid/view/View;)V
    .registers 3

    .line 607
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$2$1;->this$1:Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    .line 610
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 613
    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {p0, v1}, Lcom/flyme/systemui/statusbar/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    :cond_25
    return-void
.end method
