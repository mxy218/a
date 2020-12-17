.class public abstract Lcom/android/settings/print/PrintJobPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PrintJobPreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# static fields
.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final TAG:Ljava/lang/String; = "PrintJobPrefCtrlBase"


# instance fields
.field protected mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method private processArguments()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 89
    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, "PrintJobPrefCtrlBase"

    const-string v1, "EXTRA_PRINT_JOB_ID not set"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 97
    :cond_2b
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintJobId:Landroid/print/PrintJobId;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getPrintJob()Landroid/print/PrintJob;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    iget-object p0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    .line 77
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->processArguments()V

    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->updateUi()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->updateUi()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/print/PrintJobPreferenceControllerBase;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    return-void
.end method

.method protected abstract updateUi()V
.end method
