.class public Lcom/meizu/settings/language/FlymeInputMethodPreference;
.super Lcom/meizu/common/preference/CheckBoxPreferenceMz;
.source "FlymeInputMethodPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeInputMethodPreference"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mCheckOnClickListener:Landroid/view/View$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAllowedByOrganization:Z

.field private final mIsSystemIme:Z

.field private mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;Z)V
    .registers 7

    .line 82
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 73
    new-instance v0, Lcom/meizu/settings/language/FlymeInputMethodPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference$1;-><init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckOnClickListener:Landroid/view/View$OnClickListener;

    .line 83
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 84
    iput-object p2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 85
    iput-object p3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 86
    iput-object p4, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 87
    iput-boolean p5, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsAllowedByOrganization:Z

    .line 88
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->updateSummary()V

    .line 90
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 89
    invoke-static {p4, p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsSystemIme:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Lcom/meizu/settings/SettingsPreferenceFragment;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Landroid/content/Intent;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/language/FlymeInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object p0
.end method

.method private saveImeSettings()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 331
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 332
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    .line 333
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne p0, v3, :cond_2c

    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    .line 331
    :goto_2d
    invoke-static {v0, v1, v2, p0}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public static startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 12

    .line 226
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1a

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p0

    move v7, p2

    .line 228
    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 p0, 0x1

    return p0

    .line 232
    :cond_1a
    sget-object p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestCode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getSummaryString()Ljava/lang/String;
    .registers 7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_29

    const-string v3, ", "

    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_29
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mFragment:Lcom/meizu/settings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 247
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 246
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 250
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 6

    .line 117
    invoke-super {p0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    const v0, 0x1020010

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    const v0, 0x1020001

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 121
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, v0, :cond_37

    move p1, v0

    goto :goto_38

    :cond_37
    move p1, v1

    .line 124
    :goto_38
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4a

    .line 127
    new-instance v3, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;

    invoke-direct {v3, p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference$2;-><init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;)V

    invoke-virtual {p0, v3}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4a
    if-eqz p1, :cond_54

    .line 147
    new-instance p1, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;

    invoke-direct {p1, p0, v2}, Lcom/meizu/settings/language/FlymeInputMethodPreference$3;-><init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    :cond_54
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    const v2, 0x3ecccccd  # 0.4f

    if-nez p1, :cond_78

    .line 160
    invoke-virtual {p0, v1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutEnabled(Z)V

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz p1, :cond_6e

    .line 162
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 163
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 165
    :cond_6e
    iget-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez p1, :cond_7b

    .line 166
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_7b

    .line 170
    :cond_78
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->updatePreferenceViews()V

    .line 173
    :cond_7b
    :goto_7b
    iget-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez p1, :cond_8a

    .line 174
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutEnabled(Z)V

    .line 175
    new-instance p1, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;

    invoke-direct {p1, p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference$4;-><init>(Lcom/meizu/settings/language/FlymeInputMethodPreference;)V

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_8a
    iget-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsSystemIme:Z

    if-eqz p1, :cond_a9

    .line 187
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_a9

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    :cond_a9
    return-void
.end method

.method protected onClick()V
    .registers 4

    .line 95
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 96
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 99
    :cond_a
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 100
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/settings/utils/MzUtils;->resetSougouPackageVersionIfNeed(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mIsSystemIme:Z

    if-eqz v0, :cond_26

    .line 102
    invoke-virtual {p0, v1, v1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->setChecked(ZZ)V

    return-void

    .line 105
    :cond_26
    invoke-virtual {p0, v1, v1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->setChecked(ZZ)V

    return-void

    :cond_2a
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->setChecked(ZZ)V

    return-void
.end method

.method public setChecked(ZZ)V
    .registers 4

    .line 267
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_a

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_a
    if-eqz p2, :cond_1a

    .line 271
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->saveImeSettings()V

    .line 272
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-eqz p2, :cond_1a

    .line 273
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 276
    :cond_1a
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->updateSummary()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 199
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->updatePreferenceViews()V

    return-void
.end method

.method public updatePreferenceViews()V
    .registers 6

    .line 204
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 205
    :goto_8
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 206
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/CheckBoxPreferenceMz;->setTextLayoutEnabled(Z)V

    if-nez v0, :cond_24

    .line 207
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_24

    iget-object v4, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v4, :cond_24

    const v4, 0x3ecccccd  # 0.4f

    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 209
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 211
    :cond_24
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_2b

    .line 212
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    :cond_2b
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_32

    .line 215
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    :cond_32
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3e

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setLongClickable(Z)V

    :cond_3e
    return-void
.end method

.method public updateSummary()V
    .registers 3

    .line 254
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 258
    :cond_b
    invoke-virtual {p0, v0}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
