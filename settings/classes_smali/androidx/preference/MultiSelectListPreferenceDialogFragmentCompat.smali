.class public Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"


# instance fields
.field mEntries:[Ljava/lang/CharSequence;

.field mEntryValues:[Ljava/lang/CharSequence;

.field mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method private getListPreference()Landroidx/preference/MultiSelectListPreference;
    .registers 1

    .line 95
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/MultiSelectListPreference;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;
    .registers 4

    .line 50
    new-instance v0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_3b

    .line 63
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/MultiSelectListPreference;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 71
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 72
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    .line 74
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p1}, Landroidx/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_63

    .line 66
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_3b
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 78
    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    :goto_63
    return-void
.end method

.method public onDialogClosed(Z)V
    .registers 3

    if-eqz p1, :cond_17

    .line 124
    iget-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    if-eqz p1, :cond_17

    .line 125
    invoke-direct {p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->getListPreference()Landroidx/preference/MultiSelectListPreference;

    move-result-object p1

    .line 126
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_17
    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .registers 7

    .line 100
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 102
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 103
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1e

    .line 105
    iget-object v3, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 107
    :cond_1e
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;

    invoke-direct {v2, p0}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat$1;-><init>(Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mNewValues:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    iget-boolean v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mPreferenceChanged:Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 91
    iget-object p0, p0, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
