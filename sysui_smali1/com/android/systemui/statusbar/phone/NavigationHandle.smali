.class public Lcom/android/systemui/statusbar/phone/NavigationHandle;
.super Landroid/view/View;
.source "NavigationHandle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ButtonInterface;


# instance fields
.field private final mBottom:I

.field private final mDarkColor:I

.field private mDarkIntensity:F

.field private final mLightColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, -0x40800000  # -1.0f

    .line 34
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 49
    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    .line 50
    sget v0, Lcom/android/systemui/R$dimen;->navigation_handle_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    .line 52
    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 53
    sget v0, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 54
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 55
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 56
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    .line 57
    sget p1, Lcom/android/systemui/R$attr;->homeHandleColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .registers 1

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 68
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    mul-int/lit8 v1, v1, 0x2

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 70
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mBottom:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    int-to-float v5, v0

    int-to-float v6, v2

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 71
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mRadius:I

    int-to-float v8, v0

    int-to-float v9, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 6

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2a

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mLightColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkColor:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 89
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mDarkIntensity:F

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2a
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setVertical(Z)V
    .registers 2

    return-void
.end method
