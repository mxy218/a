.class public Lcom/meizu/settings/icclock/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mPinListener:Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/icclock/EditPinPreference;)Landroid/app/AlertDialog;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/icclock/EditPinPreference;I)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/settings/icclock/EditPinPreference;->initPositiveButtonState(I)V

    return-void
.end method

.method private addTextChangeListener(Landroid/widget/EditText;)V
    .registers 3

    .line 127
    new-instance v0, Lcom/meizu/settings/icclock/EditPinPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/icclock/EditPinPreference$1;-><init>(Lcom/meizu/settings/icclock/EditPinPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initPositiveButtonState(I)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-lt p1, v1, :cond_13

    const/16 v1, 0x8

    if-gt p1, v1, :cond_13

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    .line 164
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d

    .line 166
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1d
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .registers 1

    .line 103
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_19

    .line 93
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/16 v0, 0x12

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    invoke-direct {p0, p1}, Lcom/meizu/settings/icclock/EditPinPreference;->addTextChangeListener(Landroid/widget/EditText;)V

    :cond_19
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    .line 70
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x1020016

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x41700000  # 15.0f

    .line 77
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    .line 109
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 110
    iget-object v0, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mPinListener:Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_a

    .line 111
    invoke-interface {v0, p0, p1}, Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/meizu/settings/icclock/EditPinPreference;Z)V

    :cond_a
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mPinListener:Lcom/meizu/settings/icclock/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 3

    .line 148
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 151
    check-cast p1, Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/icclock/EditPinPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const v0, 0x1020003

    .line 153
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_2c

    .line 155
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 156
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/icclock/EditPinPreference;->initPositiveButtonState(I)V

    :cond_2c
    return-void
.end method

.method public showPinDialog()V
    .registers 2

    .line 116
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 117
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/meizu/settings/icclock/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method
