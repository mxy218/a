.class public Landroid/support/v7/widget/AppCompatCheckBox;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroid/support/v4/widget/TintableCompoundButton;


# instance fields
.field private final mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 59
    sget v0, Landroid/support/v7/appcompat/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    .line 65
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .registers 2

    .line 83
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 84
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_c

    .line 85
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->getCompoundPaddingLeft(I)I

    move-result v0

    :cond_c
    return v0
.end method

.method public setButtonDrawable(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 78
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_a

    .line 72
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->onSetButtonDrawable()V

    :cond_a
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 96
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_7

    .line 97
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2
    .param p1  # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 121
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatCheckBox;->mCompoundButtonHelper:Landroid/support/v7/widget/AppCompatCompoundButtonHelper;

    if-eqz p0, :cond_7

    .line 122
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method
