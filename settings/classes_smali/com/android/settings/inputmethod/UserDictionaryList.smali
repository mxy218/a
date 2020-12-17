.class public Lcom/android/settings/inputmethod/UserDictionaryList;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UserDictionaryList.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryList$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/UserDictionaryList$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "UserDictionaryList"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x3d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f160106

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "locale"

    const/4 v1, 0x0

    if-nez p1, :cond_12

    move-object p1, v1

    goto :goto_16

    .line 50
    :cond_12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    :goto_16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1e

    move-object v0, v1

    goto :goto_22

    .line 54
    :cond_1e
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_26

    move-object p1, v0

    goto :goto_2a

    :cond_26
    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move-object p1, v1

    .line 65
    :goto_2a
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->setLocale(Ljava/lang/String;)V

    return-void
.end method
