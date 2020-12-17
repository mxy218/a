.class public Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;
.super Landroidx/preference/Preference;
.source "AbstractGlobalSettingsPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultValue:I

.field private mDialog:Landroid/app/AlertDialog;

.field private final mKey:Ljava/lang/String;

.field private mNameEditText:Landroid/widget/EditText;

.field private final mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V
    .registers 5

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDialog:Landroid/app/AlertDialog;

    .line 34
    iput-object p3, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDefaultValue:I

    .line 36
    new-instance p2, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    new-instance p3, Lcom/meizu/settings/development/-$$Lambda$AbstractGlobalSettingsPreference$jK3WgEB5bCIeiBqnrnGMffKIxxM;

    invoke-direct {p3, p0}, Lcom/meizu/settings/development/-$$Lambda$AbstractGlobalSettingsPreference$jK3WgEB5bCIeiBqnrnGMffKIxxM;-><init>(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)V

    invoke-direct {p2, p1, p3}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    .line 37
    invoke-direct {p0, p1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/widget/EditText;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDefaultValue:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private getCurrentValue()Ljava/lang/String;
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mKey:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDefaultValue:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private showDialog(Landroidx/preference/Preference;)V
    .registers 8

    .line 52
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 54
    iput-object v1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDialog:Landroid/app/AlertDialog;

    .line 56
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00dc

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0736

    .line 57
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v2, v3}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    const v2, 0x7f0a04c3

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    .line 60
    iget-object v2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 62
    iget-object v2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 63
    iget-object v2, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 67
    new-instance v5, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;

    invoke-direct {v5, p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$1;-><init>(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)V

    invoke-virtual {v2, p1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 86
    invoke-virtual {v2, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 89
    new-instance v0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference$2;-><init>(Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 97
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 99
    iput-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDialog:Landroid/app/AlertDialog;

    .line 100
    iget-object p1, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mDialog:Landroid/app/AlertDialog;

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v4

    :goto_af
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    iget-object p0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mNameEditText:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    return-void
.end method

.method private updateSummary()V
    .registers 2

    .line 127
    invoke-direct {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->getCurrentValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AbstractGlobalSettingsPreference()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method public onAttached()V
    .registers 2

    .line 115
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->register()V

    .line 117
    invoke-direct {p0}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->updateSummary()V

    return-void
.end method

.method public onDetached()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->mObserver:Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillDeveloperSettingsObserver;->unregister()V

    .line 110
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;->showDialog(Landroidx/preference/Preference;)V

    const/4 p0, 0x0

    return p0
.end method
