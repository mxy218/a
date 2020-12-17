.class public Lcom/google/android/setupdesign/template/IconMixin;
.super Ljava/lang/Object;
.source "IconMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private final originalHeight:I

.field private final originalScaleType:Landroid/widget/ImageView$ScaleType;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 57
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 61
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 62
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    .line 63
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_24

    .line 65
    :cond_1f
    iput v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    .line 69
    :goto_24
    sget-object v0, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin:[I

    .line 70
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_android_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_35

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setIcon(I)V

    .line 77
    :cond_35
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_sudUpscaleIcon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setUpscaleIcon(Z)V

    .line 80
    sget p2, Lcom/google/android/setupdesign/R$styleable;->SudIconMixin_sudIconTint:I

    .line 81
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    if-eqz p2, :cond_49

    .line 83
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/template/IconMixin;->setIconTint(I)V

    .line 86
    :cond_49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyPartnerCustomizationStyle(Landroid/content/Context;Landroid/widget/ImageView;)V
    .registers 5
    .param p2  # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_19

    .line 105
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v1, v0, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 107
    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->shouldApplyPartnerHeavyThemeResource()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 108
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_19

    .line 110
    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/template/IconMixin;->setGravity(Landroid/widget/ImageView;I)V

    :cond_19
    return-void
.end method

.method private setGravity(Landroid/widget/ImageView;I)V
    .registers 3

    .line 194
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_13

    .line 195
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 197
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public applyPartnerCustomizationStyle()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_layout_icon:I

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/template/IconMixin;->applyPartnerCustomizationStyle(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 145
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 146
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method protected getView()Landroid/widget/ImageView;
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v0, Lcom/google/android/setupdesign/R$id;->sud_layout_icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public setIcon(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 134
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 138
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/16 p1, 0x8

    .line 139
    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_f

    :cond_d
    const/16 p1, 0x8

    .line 124
    :goto_f
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public setIconTint(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 168
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_9
    return-void
.end method

.method public setUpscaleIcon(Z)V
    .registers 6

    .line 152
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/IconMixin;->getView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 154
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 155
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_15

    .line 156
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v2

    goto :goto_20

    .line 158
    :cond_15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/setupdesign/R$dimen;->sud_glif_icon_max_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    :goto_20
    if-eqz p1, :cond_23

    goto :goto_25

    .line 160
    :cond_23
    iget v2, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalHeight:I

    :goto_25
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2f

    .line 162
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_31

    :cond_2f
    iget-object p0, p0, Lcom/google/android/setupdesign/template/IconMixin;->originalScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_31
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_34
    return-void
.end method
