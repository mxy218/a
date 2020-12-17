.class public Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;
.super Landroid/preference/Preference;
.source "FlymeRedEnvelopeSummaryPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mQuestionDialog:Landroid/app/AlertDialog;

.field private mQuestionView:Landroid/widget/TextView;

.field private mSecondTipView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 53
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mQuestionDialog:Landroid/app/AlertDialog;

    if-nez p1, :cond_8c

    .line 54
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 56
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0213

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0631

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mSecondTipView:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121173

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f121174

    .line 62
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "[groupicon]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f08076a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 67
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 66
    invoke-virtual {v2, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    const/16 v5, 0x11

    .line 69
    invoke-virtual {v4, v3, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 72
    iget-object v1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mSecondTipView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mQuestionDialog:Landroid/app/AlertDialog;

    .line 77
    :cond_8c
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mQuestionDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0212

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a05b1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mQuestionView:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeSummaryPreference;->mQuestionView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
