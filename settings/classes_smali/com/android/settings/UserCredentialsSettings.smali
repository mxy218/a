.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential;,
        Lcom/android/settings/UserCredentialsSettings$ViewHolder;,
        Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final credentialViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    .line 402
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01ac

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01ab

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01a9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    if-nez p2, :cond_f

    .line 410
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_f
    const p1, 0x7f0a0087

    .line 413
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a05ad

    .line 414
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result p3

    if-eqz p3, :cond_30

    const p3, 0x7f12059b

    goto :goto_33

    :cond_30
    const p3, 0x7f12059c

    :goto_33
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a01a8

    .line 418
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    if-eqz p4, :cond_43

    move v1, v0

    goto :goto_44

    :cond_43
    move v1, p3

    :goto_44
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_73

    move p1, v0

    .line 420
    :goto_4a
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_73

    .line 421
    sget-object p4, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {p4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    .line 422
    iget-object v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v2, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    move v1, v0

    goto :goto_6d

    :cond_6c
    move v1, p3

    :goto_6d
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4a

    :cond_73
    return-object p2
.end method


# virtual methods
.method protected announceRemoval(Ljava/lang/String;)V
    .registers 6

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f12170b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x11d

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-eqz p1, :cond_b

    .line 84
    invoke-static {p0, p1}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->show(Landroidx/fragment/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V

    :cond_b
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f12170d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    return-void
.end method

.method protected refreshItems()V
    .registers 3

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_12
    return-void
.end method
