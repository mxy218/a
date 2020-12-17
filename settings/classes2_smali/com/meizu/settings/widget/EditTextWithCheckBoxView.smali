.class public Lcom/meizu/settings/widget/EditTextWithCheckBoxView;
.super Landroid/widget/RelativeLayout;
.source "EditTextWithCheckBoxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;
    }
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/ImageView;

.field private mDeleteAllTextImg:Landroid/widget/ImageView;

.field private mEditText:Landroid/widget/EditText;

.field private mIsEditting:Z

.field private mListener:Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

.field private mState:I

.field private mText:Ljava/lang/String;

.field private mTransparentView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 43
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->handleCheckedChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/view/View;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/widget/EditText;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$402(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;Z)Z
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mIsEditting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->refreshView()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mListener:Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method private handleCheckedChanged()V
    .registers 4

    .line 80
    iget v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 81
    iput v1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 82
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setUnCheckedBackground()V

    goto :goto_11

    .line 84
    :cond_c
    iput v2, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 85
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setCheckedBackground()V

    .line 88
    :goto_11
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mListener:Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    if-eqz v0, :cond_1e

    .line 89
    iget p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    if-ne p0, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-interface {v0, v1}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;->onCheckedChanged(Z)V

    :cond_1e
    return-void
.end method

.method private init()V
    .registers 3

    .line 47
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0207

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initTransparentView()V

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initEditText(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initCheckBox(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initDelImg(Landroid/view/View;)V

    return-void
.end method

.method private initCheckBox(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a016e

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    .line 95
    iget p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    goto :goto_22

    .line 103
    :cond_17
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setCheckedBackground()V

    goto :goto_22

    .line 100
    :cond_1b
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setUnCheckedBackground()V

    goto :goto_22

    .line 97
    :cond_1f
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setNormalCheckedBackground()V

    .line 106
    :goto_22
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    new-instance v0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$3;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDelImg(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a0248

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mDeleteAllTextImg:Landroid/widget/ImageView;

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mDeleteAllTextImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$4;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 170
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mDeleteAllTextImg:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_21
    return-void
.end method

.method private initEditText(Landroid/view/View;)V
    .registers 3

    const v0, 0x7f0a0249

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    .line 176
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 177
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 178
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$5;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$6;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;

    invoke-direct {v0, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private initTransparentView()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    const v1, 0x7f0a0773

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$1;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$2;-><init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private refreshView()V
    .registers 4

    .line 222
    iget-boolean v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mIsEditting:Z

    const/16 v1, 0x8

    if-nez v0, :cond_b

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mDeleteAllTextImg:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mIsEditting:Z

    if-eqz v2, :cond_12

    const/4 v1, 0x0

    :cond_12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-boolean v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mIsEditting:Z

    if-eqz v0, :cond_21

    .line 227
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_21
    return-void
.end method

.method private updateViewInChooseMode()V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 141
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 263
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public setCheck(Z)V
    .registers 3

    if-eqz p1, :cond_6

    const/4 v0, 0x3

    .line 241
    iput v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    goto :goto_9

    :cond_6
    const/4 v0, 0x2

    .line 243
    iput v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    :goto_9
    if-eqz p1, :cond_f

    .line 246
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setCheckedBackground()V

    goto :goto_12

    .line 248
    :cond_f
    invoke-virtual {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->setUnCheckedBackground()V

    :goto_12
    return-void
.end method

.method public setCheckedBackground()V
    .registers 3

    const/4 v0, 0x3

    .line 132
    iput v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f0803eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    const v1, 0xa08017e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->updateViewInChooseMode()V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_13

    .line 120
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return-void
.end method

.method public setNormalCheckedBackground()V
    .registers 4

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 148
    iput-boolean v1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mIsEditting:Z

    .line 149
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mDeleteAllTextImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz v0, :cond_1c

    .line 150
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_1c
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mTransparentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOnTextChangedListener(Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mListener:Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    .line 257
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mText:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUnCheckedBackground()V
    .registers 3

    const/4 v0, 0x2

    .line 125
    iput v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mState:I

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mCheckBox:Landroid/widget/ImageView;

    const v1, 0x7f0803e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->mView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    invoke-direct {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->updateViewInChooseMode()V

    return-void
.end method
