.class public Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;
.super Lcom/flyme/systemui/statusbar/phone/IconMerger;
.source "FlymeIconMerger.java"


# instance fields
.field private mChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxShowSize:I

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mMoreViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$integer;->status_bar_max_show_icons_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMaxShowSize:I

    return-void
.end method

.method private getCanShowSize()I
    .registers 3

    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    goto :goto_f

    :cond_d
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMaxShowSize:I

    .line 131
    :goto_f
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->isCutoutScreen()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->is12Format()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2a

    add-int/lit8 v0, v0, -0x1

    :cond_2a
    return v0
.end method

.method private getVisibleChildrenSize()I
    .registers 6

    .line 120
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_19

    .line 122
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    return v2
.end method

.method private is12Format()Z
    .registers 2

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "12"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isCutoutScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14

    .line 49
    invoke-super {p0, p1, p2}, Lcom/flyme/systemui/statusbar/phone/IconMerger;->onMeasure(II)V

    .line 50
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getVisibleChildrenSize()I

    move-result v0

    .line 51
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->getCanShowSize()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_23

    move v3, v4

    goto :goto_24

    :cond_23
    move v3, v5

    .line 56
    :goto_24
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v5

    :goto_2a
    const/16 v7, 0x8

    if-ge v6, v2, :cond_56

    .line 59
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 60
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v7, :cond_53

    const/high16 v7, -0x80000000

    const/4 v9, -0x1

    .line 61
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 62
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 63
    invoke-virtual {v8, v10, v7}, Landroid/view/View;->measure(II)V

    .line 64
    iget-object v7, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_56
    if-le v0, v1, :cond_60

    if-nez v3, :cond_5d

    .line 70
    iget v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    sub-int/2addr p1, v0

    :cond_5d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a2

    :cond_60
    if-eqz v3, :cond_65

    .line 77
    iget v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    add-int/2addr p1, v2

    :cond_65
    move v2, v5

    move v6, v2

    move v8, v6

    :goto_68
    if-ge v2, v0, :cond_7e

    .line 79
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v6, v9

    if-gt v6, p1, :cond_7e

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_7e
    if-ne v8, v0, :cond_82

    move v4, v5

    goto :goto_a2

    .line 90
    :cond_82
    iget v2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreViewWidth:I

    sub-int/2addr p1, v2

    move v2, v5

    move v6, v2

    move v8, v6

    :goto_88
    if-ge v2, v0, :cond_9e

    .line 94
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v6, v9

    if-gt v6, p1, :cond_9e

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 101
    :cond_9e
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_a2
    move v0, v5

    move v2, v0

    :goto_a4
    if-ge v0, v1, :cond_c6

    .line 106
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v2, v6

    if-ge p1, v2, :cond_c3

    .line 108
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mChildList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v2, p1

    goto :goto_c6

    :cond_c3
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    :cond_c6
    :goto_c6
    if-eq v3, v4, :cond_d1

    .line 113
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeIconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v4, :cond_cd

    goto :goto_ce

    :cond_cd
    move v5, v7

    :goto_ce
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    .line 115
    :cond_d1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
