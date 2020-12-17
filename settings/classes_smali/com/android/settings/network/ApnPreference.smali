.class public Lcom/android/settings/network/ApnPreference;
.super Landroidx/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mHideDetails:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f040057

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    return-void
.end method

.method public static setSelectedKey(Ljava/lang/String;)V
    .registers 1

    .line 98
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    .line 62
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a009f

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 65
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-eqz v0, :cond_3f

    .line 66
    check-cast p1, Landroid/widget/RadioButton;

    .line 67
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v0, :cond_3a

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 72
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_2d
    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_3f

    :cond_3a
    const/16 p0, 0x8

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_27

    return-void

    :cond_27
    if-eqz p2, :cond_3f

    .line 108
    sget-object p2, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_31

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    :cond_31
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 113
    sget-object p1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_3f
    const/4 p0, 0x0

    .line 115
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 116
    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_44
    return-void
.end method

.method protected onClick()V
    .registers 6

    .line 122
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 123
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 125
    iget-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    if-eqz v1, :cond_1d

    const p0, 0x7f120444

    .line 126
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 130
    :cond_1d
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    iget p0, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    const-string/jumbo v1, "sub_id"

    invoke-virtual {v2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3e
    return-void
.end method

.method public setChecked()V
    .registers 1

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setHideDetails()V
    .registers 2

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mHideDetails:Z

    return-void
.end method

.method public setSelectable(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return-void
.end method

.method public setSubId(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    return-void
.end method
