.class public Lcom/meizu/settings/SimNameEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "SimNameEditTextPreference.java"


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

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 25
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    new-array p1, p2, [Landroid/text/InputFilter;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/SimNameEditTextPreference;)Landroid/widget/Button;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/SimNameEditTextPreference;->mPositiveButton:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x1

    .line 66
    :try_start_1
    invoke-static {}, Lcom/meizu/settings/UnAcceptableCharChecker;->getInstance()Lcom/meizu/settings/UnAcceptableCharChecker;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/meizu/settings/UnAcceptableCharChecker;->checkEmojiString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    :cond_d
    move v1, v2

    .line 70
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/settings/UnAcceptableCharChecker;->checkUnAcceptableChar(C)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_22

    if-ne v3, p0, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catch_22
    :cond_22
    return p0
.end method

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

    iput-object p1, p0, Lcom/meizu/settings/SimNameEditTextPreference;->mPositiveButton:Landroid/widget/Button;

    .line 35
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/SimNameEditTextPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/SimNameEditTextPreference$1;-><init>(Lcom/meizu/settings/SimNameEditTextPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
