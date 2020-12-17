.class public Lcom/meizu/settings/widget/FastScrollLetterHelper;
.super Ljava/lang/Object;
.source "FastScrollLetterHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

.field private mLastXInTouch:F

.field private mLastYInTouch:F

.field private mListView:Landroid/widget/ListView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mLastXInTouch:F

    .line 32
    iput v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mLastYInTouch:F

    .line 35
    iput-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0, p2}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->init(Landroid/widget/ListView;)V

    return-void
.end method

.method private getPixelSize(I)I
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private init(Landroid/widget/ListView;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->initLetterView(Landroid/widget/ListView;)V

    return-void
.end method

.method private initLetterView(Landroid/widget/ListView;)V
    .registers 10

    .line 49
    iput-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mListView:Landroid/widget/ListView;

    .line 50
    new-instance v0, Lcom/meizu/common/widget/FastScrollLetter;

    iget-object v1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    .line 52
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->GRAY_SINGLE:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setCircleColorType(Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;)V

    .line 53
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_20

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setFastScrollEnabled(Z)V

    return-void

    .line 58
    :cond_20
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f120860

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 60
    new-array v3, v1, [Ljava/lang/String;

    move v4, v0

    :goto_30
    if-ge v4, v1, :cond_3f

    .line 62
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 64
    :cond_3f
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p1, v3}, Lcom/meizu/common/widget/FastScrollLetter;->setLetters([Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p1, v2}, Lcom/meizu/common/widget/FastScrollLetter;->setFastScrollAlwaysVisible(Z)V

    .line 67
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f06003b

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterActiveColor(II)V

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070171

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 72
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setLayoutPaddingLeft(I)V

    .line 73
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f070170

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setHeaderHeight(I)V

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v1, p0

    .line 77
    invoke-virtual/range {v1 .. v7}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    return-void
.end method


# virtual methods
.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_a
    return p0
.end method

.method public onSizeChanged(IIII)V
    .registers 5

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/FastScrollLetter;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    const/4 v1, 0x3

    if-eq p1, v1, :cond_b

    goto :goto_17

    .line 140
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_17

    .line 137
    :cond_11
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mListView:Landroid/widget/ListView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :goto_17
    return v0
.end method

.method public setFastScrollLetterEnable(ZZ)V
    .registers 6

    .line 153
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    if-eqz p2, :cond_a

    move v2, p1

    goto :goto_11

    :cond_a
    if-eqz p1, :cond_10

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/FastScrollLetter;->setFastScrollEnabled(Z)V

    .line 155
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    if-eqz p2, :cond_19

    goto :goto_1a

    :cond_19
    move p1, v0

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setFastScrollAlwaysVisible(Z)V

    return-void
.end method

.method public setLetterBackground(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextBackgroundColor(Ljava/util/Map;)V

    return-void
.end method

.method public setLetterParam(IIIIII)V
    .registers 15

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    if-eqz v0, :cond_68

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    const p1, 0x7f070175

    .line 95
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    goto :goto_13

    .line 96
    :cond_f
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    :goto_13
    move v2, p1

    if-ne p2, v0, :cond_1f

    .line 98
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f0600c5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    goto :goto_24

    .line 99
    :cond_1f
    iget-object p1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    :goto_24
    if-ne p3, v0, :cond_36

    const p1, 0x7f070176

    .line 101
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    const p2, 0x7f0703c6

    .line 102
    invoke-direct {p0, p2}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_3a

    .line 103
    :cond_36
    invoke-direct {p0, p3}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    :goto_3a
    move v4, p1

    if-ne p4, v0, :cond_45

    const p1, 0x7f070173

    .line 105
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    goto :goto_49

    .line 106
    :cond_45
    invoke-direct {p0, p4}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    :goto_49
    move v5, p1

    if-ne p5, v0, :cond_4e

    const/4 p1, 0x0

    goto :goto_52

    .line 108
    :cond_4e
    invoke-direct {p0, p5}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    :goto_52
    move v6, p1

    if-ne p6, v0, :cond_5d

    const p1, 0x7f070172

    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    goto :goto_61

    .line 111
    :cond_5d
    invoke-direct {p0, p6}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->getPixelSize(I)I

    move-result p1

    :goto_61
    move v7, p1

    .line 113
    iget-object v1, p0, Lcom/meizu/settings/widget/FastScrollLetterHelper;->mFastScrollLetter:Lcom/meizu/common/widget/FastScrollLetter;

    const/4 v3, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterParam(IIIIII)V

    :cond_68
    return-void
.end method
