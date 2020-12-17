.class public Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;
.super Landroid/preference/Preference;
.source "FlymeServiceInfoProgressPreference.java"


# instance fields
.field private mBar:Landroid/widget/ProgressBar;

.field private mProgress:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mProgress:Z

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 5

    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mProgress:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mBar:Landroid/widget/ProgressBar;

    iget-boolean p0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mProgress:Z

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 31
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d028d

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0591

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0794

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoProgressPreference;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method
