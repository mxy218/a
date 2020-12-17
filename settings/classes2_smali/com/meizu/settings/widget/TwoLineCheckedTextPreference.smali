.class public Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;
.super Landroid/preference/Preference;
.source "TwoLineCheckedTextPreference.java"


# instance fields
.field private DARK_TEXT_COLOR:I

.field private LIGHT_TEXT_COLOR:I

.field private mContext:Landroid/content/Context;

.field private mIsAlreadyOnBind:Z

.field private mIsChecked:Z

.field private mIsEnable:Z

.field private mIvCheckBtn:Landroid/widget/ImageView;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTvText:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->init(Landroid/content/Context;)V

    .line 40
    sget-object v1, Lcom/android/settings/R$styleable;->TwoLineCheckedTextPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTitle:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mText:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    .line 55
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsChecked:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsEnable:Z

    .line 57
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060074

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->DARK_TEXT_COLOR:I

    .line 58
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600e1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->LIGHT_TEXT_COLOR:I

    return-void
.end method

.method private updateView(Z)V
    .registers 4

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------- updateView enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoLineCheckedTextPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2e

    .line 143
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 144
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const v0, 0x7f0803f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 146
    :cond_26
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->DARK_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_43

    .line 149
    :cond_2e
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 150
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const v0, 0x7f0803f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 152
    :cond_3c
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->LIGHT_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_43
    return-void
.end method


# virtual methods
.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 17
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsChecked:Z

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    const-string v0, "TwoLineCheckedTextPreference"

    const-string v1, "--------------------- onBindView ---------------------"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0753

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a072c

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvText:Landroid/widget/TextView;

    const v0, 0x7f0a016c

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    .line 69
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setTitle(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setText(Ljava/lang/String;)V

    .line 71
    iget-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsChecked:Z

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->setChecked(Z)V

    .line 72
    iget-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsEnable:Z

    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->updateView(Z)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 77
    iget-object p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0d0296

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)V
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------- setChecked checked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoLineCheckedTextPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsChecked:Z

    .line 113
    iget-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    if-nez p1, :cond_1d

    return-void

    .line 115
    :cond_1d
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 116
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsEnable:Z

    if-eqz p1, :cond_3d

    .line 118
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const v0, 0x7f0803f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->DARK_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_67

    .line 121
    :cond_3d
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const v0, 0x7f0803f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 122
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->LIGHT_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_67

    .line 125
    :cond_4d
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIvCheckBtn:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsEnable:Z

    if-eqz p1, :cond_60

    .line 127
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->DARK_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_67

    .line 129
    :cond_60
    iget-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    iget p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->LIGHT_TEXT_COLOR:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_67
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsEnable:Z

    .line 137
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mText:Ljava/lang/String;

    .line 101
    iget-boolean v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    if-eqz v0, :cond_b

    .line 102
    iget-object p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTitle:Ljava/lang/String;

    .line 90
    iget-boolean v0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mIsAlreadyOnBind:Z

    if-eqz v0, :cond_b

    .line 91
    iget-object p0, p0, Lcom/meizu/settings/widget/TwoLineCheckedTextPreference;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
