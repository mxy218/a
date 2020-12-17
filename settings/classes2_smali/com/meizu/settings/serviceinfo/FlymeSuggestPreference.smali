.class public Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;
.super Landroid/preference/Preference;
.source "FlymeSuggestPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

.field private mLinesCount:I

.field private mPaddingTop:I

.field private mPrimarySuggestion:Ljava/lang/String;

.field private mSuggestion:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mLinesCount:I

    .line 33
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 34
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPrimarySuggestion:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Landroid/widget/EditText;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mLinesCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    return-object p0
.end method

.method private initSuggestEditText(Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_5e

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    const v2, 0x7f121567

    .line 111
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 112
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 113
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    .line 116
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x0

    const v2, 0x3f8ccccd  # 1.1f

    .line 117
    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000  # 14.0f

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_56

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setClickable(Z)V

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const/16 p2, 0x10

    .line 123
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    .line 125
    :cond_56
    new-instance p2, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$2;-><init>(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;Landroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_5e
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    if-eqz p0, :cond_d

    .line 82
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    if-eqz p0, :cond_d

    .line 161
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, ""

    return-object p0
.end method

.method public isReadyToCommit()Z
    .registers 3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->getSuggestion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPrimarySuggestion:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1a

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    .line 44
    :cond_5
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mView:Landroid/view/View;

    .line 47
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mView:Landroid/view/View;

    const v0, 0x7f0a0242

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    .line 48
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPrimarySuggestion:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->initSuggestEditText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    new-instance v0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference$1;-><init>(Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mView:Landroid/view/View;

    return-object p0
.end method

.method public refreshLayout()V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    if-eqz v0, :cond_5b

    .line 63
    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mLinesCount:I

    .line 67
    :cond_c
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mLinesCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3f

    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPaddingTop:I

    if-nez v0, :cond_3f

    .line 68
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPaddingTop:I

    .line 69
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    .line 70
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    .line 71
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p0

    add-int/lit8 p0, p0, 0x24

    .line 69
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_5b

    .line 73
    :cond_3f
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mLinesCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPaddingTop:I

    if-eqz v0, :cond_5b

    .line 74
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPaddingTop:I

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    .line 75
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mPaddingTop:I

    .line 74
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public setFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeSuggestPreference;->mSuggestion:Landroid/widget/EditText;

    if-eqz p0, :cond_7

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
