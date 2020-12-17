.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mFooterText:Landroid/text/SpannableStringBuilder;

.field private mHelpUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method addHelpLink()V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 110
    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_1a

    .line 112
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mFooterText:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mHelpUri:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$SupportPageLearnMoreSpan;->linkify(Landroid/text/Spannable;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 113
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mFooterText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public getHelpResource()I
    .registers 1

    const p0, 0x7f120995

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "BatterySaverSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x34

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f16002a

    return p0
.end method

.method public onStart()V
    .registers 1

    .line 58
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->setupFooter()V

    return-void
.end method

.method setupFooter()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 99
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const v1, 0x10400f2

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mFooterText:Landroid/text/SpannableStringBuilder;

    const v0, 0x7f120995

    .line 101
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mHelpUri:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;->addHelpLink()V

    :cond_22
    return-void
.end method
