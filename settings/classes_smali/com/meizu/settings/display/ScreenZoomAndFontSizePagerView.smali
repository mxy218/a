.class public Lcom/meizu/settings/display/ScreenZoomAndFontSizePagerView;
.super Landroidx/viewpager/widget/ViewPager;
.source "ScreenZoomAndFontSizePagerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 7

    .line 24
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result p0

    :goto_a
    return p0
.end method
