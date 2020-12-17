.class public Lcom/flyme/systemui/statusbar/phone/RightIconAreaLayout;
.super Landroid/widget/LinearLayout;
.source "RightIconAreaLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    .line 19
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x43160000  # 150.0f

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 22
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
