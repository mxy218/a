.class Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$ViewPagerTransformer;
.super Ljava/lang/Object;
.source "NavigationBarDetailSimpleActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewPagerTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$1;)V
    .registers 2

    .line 204
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarDetailSimpleActivity$ViewPagerTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    const v0, 0x7f0a0753

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a06d6

    .line 210
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v1, -0x40800000  # -1.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3c

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_3c

    if-eqz v0, :cond_2d

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 213
    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2d
    if-eqz p1, :cond_3c

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 216
    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_3c
    return-void
.end method
