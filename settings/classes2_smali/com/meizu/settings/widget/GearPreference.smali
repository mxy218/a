.class public Lcom/meizu/settings/widget/GearPreference;
.super Lcom/meizu/settings/widget/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/widget/GearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/meizu/settings/widget/GearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/widget/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d02a0

    .line 34
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 3

    .line 44
    invoke-super {p0, p1}, Lcom/meizu/settings/widget/RestrictedPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0656

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    .line 49
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/widget/GearPreference;->mOnGearClickListener:Lcom/meizu/settings/widget/GearPreference$OnGearClickListener;

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_22

    :cond_19
    const/16 p0, 0x8

    .line 53
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_22
    const/4 p0, 0x1

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0656

    if-ne p1, v0, :cond_10

    .line 62
    iget-object p1, p0, Lcom/meizu/settings/widget/GearPreference;->mOnGearClickListener:Lcom/meizu/settings/widget/GearPreference$OnGearClickListener;

    if-eqz p1, :cond_10

    .line 63
    invoke-interface {p1, p0}, Lcom/meizu/settings/widget/GearPreference$OnGearClickListener;->onGearClick(Lcom/meizu/settings/widget/GearPreference;)V

    :cond_10
    return-void
.end method
