.class public Lcom/meizu/settings/widget/DimmableIconPreference;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "DimmableIconPreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/widget/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method

.method private dimIcon(Z)V
    .registers 4

    .line 56
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 58
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_f

    const/16 p1, 0x66

    goto :goto_11

    :cond_f
    const/16 p1, 0xff

    :goto_11
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 59
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 65
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/settings/widget/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const v0, 0x1020016

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/meizu/settings/widget/DimmableIconPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    :cond_19
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    invoke-direct {p0, p1}, Lcom/meizu/settings/widget/DimmableIconPreference;->dimIcon(Z)V

    return-void
.end method
