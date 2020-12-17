.class public Lcom/android/settings/widget/FixedLineSummaryPreference;
.super Landroidx/preference/Preference;
.source "FixedLineSummaryPreference.java"


# instance fields
.field private mSummaryLineCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v0, Lcom/android/settings/R$styleable;->FixedLineSummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_18

    .line 40
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    goto :goto_1a

    .line 43
    :cond_18
    iput v0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    .line 45
    :goto_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 54
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1d

    .line 57
    iget v0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    .line 58
    iget p0, p0, Lcom/android/settings/widget/FixedLineSummaryPreference;->mSummaryLineCount:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 59
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1d
    return-void
.end method
