.class public Lcom/meizu/textinputlayout/EditTextWithClearIcon;
.super Landroid/widget/EditText;
.source "EditTextWithClearIcon.java"


# instance fields
.field isRTL:Z

.field mClearIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/textinputlayout/EditTextWithClearIcon;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->setRightDrawable()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/textinputlayout/R$drawable;->mz_text_input_layout_ic_clear_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->mClearIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->isRTL:Z

    .line 40
    new-instance p1, Lcom/meizu/textinputlayout/EditTextWithClearIcon$1;

    invoke-direct {p1, p0}, Lcom/meizu/textinputlayout/EditTextWithClearIcon$1;-><init>(Lcom/meizu/textinputlayout/EditTextWithClearIcon;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    invoke-direct {p0}, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->setRightDrawable()V

    return-void
.end method

.method private setRightDrawable()V
    .registers 3

    .line 58
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    .line 59
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->isRTL:Z

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->mClearIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    .line 62
    :cond_11
    iget-object v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->mClearIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1a

    .line 65
    :cond_17
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 73
    iget-boolean v0, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->isRTL:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    .line 74
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_13

    .line 76
    :cond_d
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 79
    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_65

    if-eqz v0, :cond_65

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 82
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 83
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    .line 85
    iget-boolean v1, p0, Lcom/meizu/textinputlayout/EditTextWithClearIcon;->isRTL:Z

    if-eqz v1, :cond_3d

    .line 86
    iget v1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_46

    .line 88
    :cond_3d
    iget v1, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 90
    :goto_46
    iget v0, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 91
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, ""

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_65
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
