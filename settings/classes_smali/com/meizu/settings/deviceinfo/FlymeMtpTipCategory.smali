.class public Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;
.super Landroid/preference/Preference;
.source "FlymeMtpTipCategory.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;

.field private normalStr:Ljava/lang/String;

.field private normalStrResId:I

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Lcom/android/settings/R$styleable;->MtpTipCategory:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStr:Ljava/lang/String;

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->startFileTransferTipsFragment()V

    return-void
.end method

.method private getLinkUrlStr(Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 5

    .line 77
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_20

    .line 80
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    .line 81
    new-instance v2, Landroid/text/style/URLSpan;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-direct {v2, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_20
    return-object v0
.end method

.method private startFileTransferTipsFragment()V
    .registers 8

    .line 111
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class p0, Lcom/meizu/settings/deviceinfo/FlymeFileTransferTipsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0x7f1216b5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_6

    .line 118
    invoke-virtual {p0, p2}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 120
    :cond_6
    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->onBindView(Landroid/view/View;)V

    return-object p1
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 7

    .line 88
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a074b

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->mTextView:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStr:Ljava/lang/String;

    if-nez v0, :cond_2d

    iget v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStrResId:I

    if-eqz v0, :cond_2d

    .line 93
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStrResId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 96
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_40
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->getLinkUrlStr(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a0750

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 68
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "layout_inflater"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0d018d

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setNormalStr(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->normalStrResId:I

    return-void
.end method

.method public setUrlStr(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_6

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 62
    :cond_10
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeMtpTipCategory;->urlStr:Ljava/lang/String;

    :cond_12
    return-void
.end method
