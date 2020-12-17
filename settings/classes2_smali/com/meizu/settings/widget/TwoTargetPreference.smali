.class public Lcom/meizu/settings/widget/TwoTargetPreference;
.super Landroid/preference/Preference;
.source "TwoTargetPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d0297

    .line 50
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 6

    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0781

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020018

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    if-eqz p0, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 64
    :goto_1f
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    if-eqz p1, :cond_2b

    if-eqz p0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    .line 67
    :goto_28
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .registers 1

    .line 72
    invoke-virtual {p0}, Lcom/meizu/settings/widget/TwoTargetPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
