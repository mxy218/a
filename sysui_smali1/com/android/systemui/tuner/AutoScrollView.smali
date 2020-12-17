.class public Lcom/android/systemui/tuner/AutoScrollView;
.super Landroid/widget/ScrollView;
.source "AutoScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .registers 6

    .line 32
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_28

    .line 34
    :cond_9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 35
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const v3, 0x3dcccccd  # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-ge p1, v2, :cond_1f

    sub-int/2addr p1, v2

    .line 38
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_28

    :cond_1f
    sub-int v3, v0, v2

    if-le p1, v3, :cond_28

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    .line 40
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    :cond_28
    :goto_28
    return v1
.end method
