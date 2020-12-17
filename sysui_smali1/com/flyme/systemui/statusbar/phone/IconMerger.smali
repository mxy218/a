.class public Lcom/flyme/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mIconHPadding:I

.field private mIconSize:I

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object p0
.end method

.method private checkOverflow(I)V
    .registers 8

    .line 80
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    if-ge v2, v0, :cond_1f

    .line 85
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1c

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 87
    :cond_1f
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v1

    :goto_2b
    if-eqz v0, :cond_2f

    add-int/lit8 v3, v3, -0x1

    .line 90
    :cond_2f
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v3, p1, :cond_37

    move v1, v2

    :cond_37
    if-eq v1, v0, :cond_41

    .line 92
    new-instance p1, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {p1, p0, v1}, Lcom/flyme/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/flyme/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_41
    return-void
.end method

.method private getFullIconWidth()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mIconSize:I

    iget p0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private reloadDimens()V
    .registers 3

    .line 46
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 48
    sget v1, Lcom/android/systemui/R$dimen;->status_bar_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/IconMerger;->mIconHPadding:I

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->reloadDimens()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 75
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 76
    invoke-direct {p0, p4}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 70
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->getFullIconWidth()I

    move-result p2

    rem-int p2, p1, p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
