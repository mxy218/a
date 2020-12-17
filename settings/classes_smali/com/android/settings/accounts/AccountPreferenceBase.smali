.class abstract Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# static fields
.field protected static final VERBOSE:Z


# instance fields
.field protected mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

.field protected mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUm:Landroid/os/UserManager;

.field protected mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "AccountPreferenceBase"

    const/4 v1, 0x2

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/AccountPreferenceBase;->VERBOSE:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$duCjsGZhZVNysJ2Rj1t7N9PkFAY;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$duCjsGZhZVNysJ2Rj1t7N9PkFAY;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->addPreferencesForType(Ljava/lang/String;Landroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0
.end method

.method protected formatSyncDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM/dd/yyyy"

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$AccountPreferenceBase()V
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method

.method public synthetic lambda$new$1$AccountPreferenceBase(I)V
    .registers 2

    .line 120
    new-instance p1, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$7XBpqCguERDVZFsa_jC8V8rk8o8;

    invoke-direct {p1, p0}, Lcom/android/settings/accounts/-$$Lambda$AccountPreferenceBase$7XBpqCguERDVZFsa_jC8V8rk8o8;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .registers 2

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 98
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mDateFormat:Ljava/text/DateFormat;

    .line 99
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mTimeFormat:Ljava/text/DateFormat;

    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 63
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    .line 65
    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 66
    new-instance p1, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mUserHandle:Landroid/os/UserHandle;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;-><init>(Landroidx/preference/MzPreferenceFragmentCompat;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAccountTypePreferenceLoader:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 115
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 116
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {p0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    const/16 v1, 0xd

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onSyncStateUpdated()V

    return-void
.end method

.method protected onSyncStateUpdated()V
    .registers 1

    return-void
.end method

.method public updateAuthDescriptions()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    return-void
.end method
