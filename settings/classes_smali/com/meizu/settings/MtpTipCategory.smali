.class public Lcom/meizu/settings/MtpTipCategory;
.super Landroid/preference/Preference;
.source "MtpTipCategory.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;

.field private normalStr:Ljava/lang/String;

.field private normalStrResId:I

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v0, Lcom/android/settings/R$styleable;->MtpTipCategory:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/MtpTipCategory;->normalStr:Ljava/lang/String;

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getLinkUrlStr(Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 5

    .line 76
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_20

    .line 79
    iget-object v1, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    .line 80
    new-instance v2, Landroid/text/style/URLSpan;

    iget-object p0, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-direct {v2, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_20
    return-object v0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_6

    .line 107
    invoke-virtual {p0, p2}, Lcom/meizu/settings/MtpTipCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 109
    :cond_6
    invoke-virtual {p0, p1}, Lcom/meizu/settings/MtpTipCategory;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 6

    .line 87
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0753

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/MtpTipCategory;->mTextView:Landroid/widget/TextView;

    .line 91
    iget-object p1, p0, Lcom/meizu/settings/MtpTipCategory;->normalStr:Ljava/lang/String;

    if-nez p1, :cond_2d

    iget p1, p0, Lcom/meizu/settings/MtpTipCategory;->normalStrResId:I

    if-eqz p1, :cond_2d

    .line 92
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/MtpTipCategory;->normalStrResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    .line 95
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/meizu/settings/MtpTipCategory;->normalStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/MtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    :goto_40
    iget-object v0, p0, Lcom/meizu/settings/MtpTipCategory;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/meizu/settings/MtpTipCategory;->getLinkUrlStr(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/MtpTipCategory;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 67
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "layout_inflater"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0d018d

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
