.class public Lcom/google/android/setupcompat/template/FooterBarMixin;
.super Ljava/lang/Object;
.source "FooterBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# static fields
.field private static final nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final applyPartnerResources:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private buttonContainer:Landroid/widget/LinearLayout;

.field private final context:Landroid/content/Context;

.field defaultPadding:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private footerBarPaddingBottom:I

.field private footerBarPaddingTop:I

.field private final footerBarPrimaryBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final footerBarSecondaryBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final footerStub:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private primaryButtonId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field primaryDefaultTextColor:Landroid/content/res/ColorStateList;

.field private removeFooterBarWhenEmpty:Z

.field private secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private secondaryButtonId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field secondaryDefaultTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 87
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    .line 101
    new-instance v1, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-direct {v1}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;-><init>()V

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 156
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 157
    sget v1, Lcom/google/android/setupcompat/R$id;->suc_layout_footer:I

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    .line 158
    instance-of v1, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 160
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    move-result p1

    if-eqz p1, :cond_31

    move p1, v0

    goto :goto_32

    :cond_31
    move p1, v2

    :goto_32
    iput-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    .line 162
    iget-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin:[I

    .line 163
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 164
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingVertical:I

    .line 165
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 166
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingTop:I

    iget p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 167
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 169
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPaddingBottom:I

    iget p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->defaultPadding:I

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 172
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterBackground:I

    .line 173
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    .line 174
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterBackground:I

    .line 175
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    .line 177
    sget p2, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarPrimaryFooterButton:I

    .line 178
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 179
    sget p3, Lcom/google/android/setupcompat/R$styleable;->SucFooterBarMixin_sucFooterBarSecondaryFooterButton:I

    .line 180
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButtonInflater;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/android/setupcompat/template/FooterButtonInflater;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_8c

    .line 186
    invoke-virtual {p1, p3}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 187
    iget-object p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p3, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    :cond_8c
    if-eqz p2, :cond_9a

    .line 191
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButtonInflater;->inflate(I)Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 192
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0, v0, v0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    :cond_9a
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupcompat/template/FooterBarMixin;)Landroid/widget/LinearLayout;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/setupcompat/template/FooterBarMixin;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/setupcompat/template/FooterBarMixin;Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/setupcompat/template/FooterBarMixin;)V
    .registers 1

    .line 73
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method private addSpace()Landroid/view/View;
    .registers 5

    .line 198
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object p0

    .line 199
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x4

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private autoSetButtonBarVisibility()V
    .registers 5

    .line 468
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    .line 469
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    .line 470
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v3

    :goto_15
    if-eqz v1, :cond_1e

    .line 472
    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    .line 474
    :goto_1f
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_33

    if-nez v0, :cond_30

    if-eqz v2, :cond_28

    goto :goto_30

    .line 478
    :cond_28
    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->removeFooterBarWhenEmpty:Z

    if-eqz p0, :cond_2f

    const/16 v3, 0x8

    goto :goto_30

    :cond_2f
    const/4 v3, 0x4

    .line 475
    :cond_30
    :goto_30
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_33
    return-void
.end method

.method private static convertRgbToArgb(IF)I
    .registers 4
    .param p0  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 773
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 105
    new-instance v0, Lcom/google/android/setupcompat/template/FooterBarMixin$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin$1;-><init>(Lcom/google/android/setupcompat/template/FooterBarMixin;I)V

    return-object v0
.end method

.method private ensureFooterInflated()Landroid/widget/LinearLayout;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_25

    .line 209
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1d

    .line 212
    sget v0, Lcom/google/android/setupcompat/R$layout;->suc_footer_button_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateFooter(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    .line 213
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarInflated(Landroid/widget/LinearLayout;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V

    goto :goto_25

    .line 210
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Footer stub is not found in this template"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_25
    :goto_25
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static generateViewId()I
    .registers 3

    .line 501
    :cond_0
    sget-object v0, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_e

    const/4 v1, 0x1

    .line 507
    :cond_e
    sget-object v2, Lcom/google/android/setupcompat/template/FooterBarMixin;->nextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private static getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    goto :goto_1c

    .line 729
    :pswitch_5  #0x8
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 726
    :pswitch_8  #0x7
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 723
    :pswitch_b  #0x6
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 720
    :pswitch_e  #0x5
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 717
    :pswitch_11  #0x4
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 714
    :pswitch_14  #0x3
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 711
    :pswitch_17  #0x2
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    goto :goto_1c

    .line 708
    :pswitch_1a  #0x1
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    :goto_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method

.method private getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I
    .registers 5

    .line 422
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result v0

    .line 425
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getTheme()I

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    move p2, v0

    .line 431
    :cond_10
    :goto_10
    iget-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p1

    .line 432
    iget-boolean p3, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p3, :cond_25

    if-nez p1, :cond_25

    .line 433
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    goto :goto_2d

    .line 434
    :cond_25
    iget-boolean p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2d

    .line 438
    sget p2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    :cond_2d
    :goto_2d
    return p2
.end method

.method private inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 516
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getPartnerTheme()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object p2

    .line 517
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_18

    .line 518
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    goto :goto_1f

    .line 520
    :cond_18
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->generateViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    .line 524
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getVisibility()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 528
    invoke-virtual {p2, p1}, Lcom/google/android/setupcompat/template/FooterActionButton;->setFooterButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 530
    invoke-virtual {p2}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->createButtonEventListener(I)Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setOnButtonEventListener(Lcom/google/android/setupcompat/template/FooterButton$OnButtonEventListener;)V

    return-object p2
.end method

.method private onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 538
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_5

    return-void

    .line 542
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 541
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 544
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextSizeConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 543
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTextSizeWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 546
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextTypeFaceConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 545
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonTypeFaceWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 548
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonBackgroundConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    .line 547
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonBackgroundWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 549
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRadiusConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonRadiusWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 550
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonIconConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonIconWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonRippleColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    return-void
.end method

.method private setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_11

    .line 685
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 686
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 687
    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 692
    :cond_11
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1d

    move-object p0, p2

    move-object p2, v2

    goto :goto_29

    .line 694
    :cond_1d
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    if-ne v0, p0, :cond_27

    move-object p0, v2

    goto :goto_29

    :cond_27
    move-object p0, v2

    move-object p2, p0

    .line 697
    :goto_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_33

    .line 698
    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_36

    .line 700
    :cond_33
    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_36
    return-void
.end method

.method private updateButtonBackground(Landroid/widget/Button;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 622
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateButtonBackgroundWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    const-string v3, "Update button background only support on sdk Q or higher"

    invoke-static {v0, v3}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(ZLjava/lang/String;)V

    new-array v0, v1, [I

    const v3, -0x101009e

    aput v3, v0, v2

    new-array v3, v2, [I

    .line 596
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p2

    if-eqz p2, :cond_67

    .line 599
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    new-array v4, v1, [I

    const v5, 0x1010033

    aput v5, v4, v2

    invoke-virtual {p0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const v4, 0x3e851eb8  # 0.26f

    .line 600
    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 601
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 604
    new-instance p0, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v6, v5, [[I

    aput-object v0, v6, v2

    aput-object v3, v6, v1

    new-array v0, v5, [I

    .line 607
    invoke-static {p2, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->convertRgbToArgb(IF)I

    move-result v3

    aput v3, v0, v2

    aput p2, v0, v1

    invoke-direct {p0, v6, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 615
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-array v0, v2, [I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 616
    invoke-virtual {p1}, Landroid/widget/Button;->refreshDrawableState()V

    .line 617
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_67
    return-void
.end method

.method private updateButtonIconWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_12

    .line 673
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 675
    :cond_12
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setButtonIcon(Landroid/widget/Button;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateButtonRadiusWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 5

    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1b

    .line 628
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p2

    .line 629
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 631
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1b
    return-void
.end method

.method private updateButtonRippleColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V
    .registers 9

    .line 641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_51

    .line 642
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 650
    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 651
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 652
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonTextColorConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v2

    .line 654
    iget-object v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 655
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v4

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 656
    invoke-virtual {p2}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;->getButtonRippleColorAlphaConfig()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object p2

    invoke-virtual {v4, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getFraction(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    .line 659
    new-instance p2, Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    new-array v5, v4, [[I

    aput-object v1, v5, v3

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    aput-object v1, v5, v0

    new-array v1, v4, [I

    .line 662
    invoke-static {v2, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->convertRgbToArgb(IF)I

    move-result p0

    aput p0, v1, v3

    aput v3, v1, v0

    invoke-direct {p2, v5, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 663
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_51
    return-void
.end method

.method private updateButtonTextColorWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 4

    .line 556
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 558
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result p0

    if-eqz p0, :cond_2c

    .line 560
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2c

    .line 565
    :cond_1c
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    iget v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    if-ne p2, v0, :cond_27

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    goto :goto_29

    :cond_27
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 564
    :goto_29
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private updateButtonTextSizeWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p0

    const/4 p2, 0x0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_15

    const/4 p2, 0x0

    .line 573
    invoke-virtual {p1, p2, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_15
    return-void
.end method

.method private updateButtonTypeFaceWithPartnerConfig(Landroid/widget/Button;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)V
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 580
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getString(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    .line 581
    invoke-static {p0, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 583
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_16
    return-void
.end method

.method private updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 793
    :cond_3
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected createThemedButton(Landroid/content/Context;I)Lcom/google/android/setupcompat/template/FooterActionButton;
    .registers 4
    .param p2  # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 286
    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 287
    sget p1, Lcom/google/android/setupcompat/R$layout;->suc_button:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/template/FooterActionButton;

    return-object p0
.end method

.method public getButtonContainer()Landroid/widget/LinearLayout;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 445
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method getGradientDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    .line 743
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_31

    .line 744
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 745
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    .line 746
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 747
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    .line 748
    :cond_1e
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_31

    .line 749
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 750
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLoggingMetrics()Landroid/os/PersistableBundle;
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 828
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method getPaddingBottom()I
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 806
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    goto :goto_f

    .line 807
    :cond_9
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingBottom()I

    move-result p0

    :goto_f
    return p0
.end method

.method getPaddingTop()I
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    goto :goto_f

    :cond_9
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->getPaddingTop()I

    move-result p0

    :goto_f
    return p0
.end method

.method public getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method public getPrimaryButtonView()Landroid/widget/Button;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_e
    return-object p0
.end method

.method getRippleDrawable(Landroid/widget/Button;)Landroid/graphics/drawable/RippleDrawable;
    .registers 3

    .line 760
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_1e

    .line 761
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 762
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_17

    .line 763
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    .line 764
    :cond_17
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1e

    .line 765
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method public getSecondaryButtonView()Landroid/widget/Button;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    :goto_e
    return-object p0
.end method

.method public getVisibility()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 485
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method protected inflateFooter(I)Landroid/view/View;
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 777
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_18

    .line 778
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButtonBar_Stackable:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 779
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 783
    :cond_18
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 784
    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method isPrimaryButtonVisible()Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 341
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method isSecondaryButtonVisible()Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 495
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 496
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 4

    .line 812
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 813
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    const/4 v2, 0x0

    .line 812
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logPrimaryButtonInitialStateVisibility(ZZ)V

    .line 814
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    .line 815
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result p0

    .line 814
    invoke-virtual {v0, p0, v2}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->logSecondaryButtonInitialStateVisibility(ZZ)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 820
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->metrics:Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isPrimaryButtonVisible()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->isSecondaryButtonVisible()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/setupcompat/logging/internal/FooterBarMixinMetrics;->updateButtonVisibility(ZZ)V

    return-void
.end method

.method protected onFooterBarApplyPartnerResource(Landroid/widget/LinearLayout;)V
    .registers 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 252
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->applyPartnerResources:Z

    if-nez v0, :cond_8

    return-void

    .line 257
    :cond_8
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 258
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v0

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 264
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 266
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    .line 268
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 269
    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    .line 272
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 274
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .line 270
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    return-void
.end method

.method protected onFooterBarInflated(Landroid/widget/LinearLayout;)V
    .registers 9
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 229
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_11

    .line 230
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    goto :goto_18

    .line 232
    :cond_11
    invoke-static {}, Lcom/google/android/setupcompat/template/FooterBarMixin;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 236
    :goto_18
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingTop:I

    .line 238
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPaddingBottom:I

    move-object v1, p0

    move-object v2, p1

    .line 234
    invoke-direct/range {v1 .. v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateFooterBarPadding(Landroid/widget/LinearLayout;IIII)V

    return-void
.end method

.method protected onFooterButtonInflated(Landroid/widget/Button;I)V
    .registers 3
    .param p2  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-eqz p2, :cond_5

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->updateButtonBackground(Landroid/widget/Button;I)V

    .line 414
    :cond_5
    iget-object p2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->autoSetButtonBarVisibility()V

    return-void
.end method

.method protected repopulateButtons()V
    .registers 4

    .line 388
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButtonView()Landroid/widget/Button;

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz v2, :cond_14

    .line 394
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    :cond_14
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->addSpace()Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 398
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1c
    return-void
.end method

.method public setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string/jumbo v0, "setPrimaryButton"

    .line 293
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 297
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Primary:I

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 300
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 306
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 308
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 312
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonId:I

    .line 317
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 318
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 319
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 321
    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarPrimaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 322
    invoke-direct {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void
.end method

.method public setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V
    .registers 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const-string/jumbo v0, "setSecondaryButton"

    .line 347
    invoke-static {v0}, Lcom/google/android/setupcompat/internal/Preconditions;->ensureOnMainThread(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    .line 351
    new-instance v0, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;-><init>(Lcom/google/android/setupcompat/template/FooterButton;)V

    sget v1, Lcom/google/android/setupcompat/R$style;->SucPartnerCustomizationButton_Secondary:I

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 354
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPartnerTheme(Lcom/google/android/setupcompat/template/FooterButton;ILcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v1

    .line 353
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setPartnerTheme(I)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 359
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonBackgroundConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 360
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton;->getButtonType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getDrawablePartnerConfig(I)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonIconConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 361
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRadiusConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 362
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setButtonRippleColorAlphaConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 363
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextColorConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 364
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextSizeConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 365
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->setTextTypeFaceConfig(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;

    .line 366
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig$Builder;->build()Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    move-result-object v0

    .line 368
    invoke-direct {p0, p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->inflateButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)Lcom/google/android/setupcompat/template/FooterActionButton;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v2

    iput v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonId:I

    .line 371
    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 372
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 373
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButtonPartnerConfigForTesting:Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;

    .line 375
    iget p1, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->footerBarSecondaryBackgroundColor:I

    invoke-virtual {p0, v1, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonInflated(Landroid/widget/Button;I)V

    .line 376
    invoke-direct {p0, v1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->onFooterButtonApplyPartnerResource(Landroid/widget/Button;Lcom/google/android/setupcompat/internal/FooterButtonPartnerConfig;)V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->repopulateButtons()V

    return-void
.end method
