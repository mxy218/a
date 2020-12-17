.class public Lcom/meizu/settings/SimNumberEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "SimNumberEditTextPreference.java"


# instance fields
.field private mPositiveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 25
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/SimNumberEditTextPreference;)Landroid/widget/Button;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/SimNumberEditTextPreference;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method protected showDialog(Landroid/os/Bundle;)V
    .registers 3

    .line 30
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SimNumberEditTextPreference;->mPositiveButton:Landroid/widget/Button;

    .line 35
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/SimNumberEditTextPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/SimNumberEditTextPreference$1;-><init>(Lcom/meizu/settings/SimNumberEditTextPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
