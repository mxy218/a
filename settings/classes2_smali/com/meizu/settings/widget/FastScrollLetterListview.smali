.class public Lcom/meizu/settings/widget/FastScrollLetterListview;
.super Landroid/widget/ListView;
.source "FastScrollLetterListview.java"


# instance fields
.field private mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/FastScrollLetterListview;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 19
    new-instance v0, Lcom/meizu/settings/widget/FastScrollLetterHelper;

    invoke-direct {v0, p1, p0}, Lcom/meizu/settings/widget/FastScrollLetterHelper;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;->mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;->mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 29
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;->mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;

    return-object p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;->mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/meizu/settings/widget/FastScrollLetterListview;->mFastScrollLetterHelper:Lcom/meizu/settings/widget/FastScrollLetterHelper;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 47
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
