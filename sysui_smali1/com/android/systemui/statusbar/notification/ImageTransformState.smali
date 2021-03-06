.class public Lcom/android/systemui/statusbar/notification/ImageTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "ImageTransformState.java"


# static fields
.field public static final ICON_TAG:I

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/ImageTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    sget v0, Lcom/android/systemui/R$id;->image_icon_tag:I

    sput v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    .line 38
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private static mapToDuration(F)F
    .registers 2

    const/high16 v0, 0x43b40000  # 360.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x43160000  # 150.0f

    sub-float/2addr p0, v0

    const/high16 v0, 0x43520000  # 210.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 104
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;
    .registers 1

    .line 112
    sget-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    if-eqz v0, :cond_b

    return-object v0

    .line 116
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ImageTransformState;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 4

    .line 63
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_38

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-nez v0, :cond_1d

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 66
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 69
    :cond_1d
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mapToDuration(F)F

    move-result p1

    .line 70
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 71
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 73
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3b

    .line 76
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->appear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_3b
    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .registers 5

    .line 82
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    if-eqz v0, :cond_3a

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-nez v0, :cond_1a

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 85
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    :cond_1a
    const/high16 p2, 0x3f800000  # 1.0f

    sub-float p1, p2, p1

    .line 87
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mapToDuration(F)F

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;FZ)V

    .line 90
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 92
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3d

    .line 95
    :cond_3a
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->disappear(FLcom/android/systemui/statusbar/TransformableView;)V

    :goto_3d
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .registers 3

    .line 44
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 45
    instance-of p2, p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_11

    .line 46
    sget p2, Lcom/android/systemui/statusbar/notification/ImageTransformState;->ICON_TAG:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    :cond_11
    return-void
.end method

.method public recycle()V
    .registers 3

    .line 126
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    if-ne v0, v1, :cond_10

    .line 128
    sget-object v0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method protected reset()V
    .registers 2

    .line 134
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 5

    .line 52
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 55
    :cond_8
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ImageTransformState;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_1e

    check-cast p1, Lcom/android/systemui/statusbar/notification/ImageTransformState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1

    :cond_20
    return v2
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result p0

    return p0
.end method
