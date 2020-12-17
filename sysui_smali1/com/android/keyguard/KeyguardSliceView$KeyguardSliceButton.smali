.class Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;
.super Landroid/widget/Button;
.source "KeyguardSliceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardSliceButton"
.end annotation


# static fields
.field private static sStyleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 525
    sget v0, Lcom/android/systemui/R$style;->TextAppearance_Keyguard_Secondary:I

    sput v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->sStyleId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 528
    sget v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->sStyleId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 529
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->onDensityOrFontScaleChanged()V

    .line 530
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private updateDrawableColors()V
    .registers 5

    .line 585
    invoke-virtual {p0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 586
    invoke-virtual {p0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    if-eqz v3, :cond_13

    .line 588
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method private updatePadding()V
    .registers 5

    .line 562
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 563
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_horizontal_padding:I

    .line 564
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, -0x1

    :goto_1f
    mul-int/2addr v1, v2

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, v2, v0, v1, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 566
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_padding:I

    .line 567
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 566
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 535
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 536
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 547
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 541
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 542
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 2

    .line 552
    sget v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->sStyleId:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextAppearance(I)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 579
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 580
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    .line 581
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 3

    .line 557
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 558
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updatePadding()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 572
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceButton;->updateDrawableColors()V

    return-void
.end method
