.class public Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;
.super Lcom/meizu/settings/AppListBaseSettings;
.source "FlymeQuickWakeupSelectAppFragment.java"


# instance fields
.field private isInSecretsMode:Z

.field private mCurrentSelectAppInfo:Ljava/lang/String;

.field private mEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGuestureIconResId:I

.field private mGuestureSwitchKey:Ljava/lang/String;

.field private mGuestureTitle:Ljava/lang/String;

.field private mSelectedAppDetailsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/AppListBaseSettings;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureSwitchKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/util/List;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mEntryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mSelectedAppDetailsKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->isInSecretsMode:Z

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;ZZ)V
    .registers 3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/AppListBaseSettings;->setFastScrollLetterEnable(ZZ)V

    return-void
.end method


# virtual methods
.method public createMzSingleArrayGroupAdapter(Ljava/util/List;)Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)",
            "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 126
    new-instance p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 129
    :cond_10
    new-instance v0, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/meizu/settings/widget/MzAppEntry;-><init>(Landroid/content/Context;Landroid/content/AsyncTaskLoader;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    const/4 v1, 0x0

    .line 130
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    iget-object v2, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    const/4 v3, 0x1

    aput v3, v2, v1

    sub-int/2addr v0, v3

    .line 134
    aput v0, v2, v3

    .line 135
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mEntryList:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    iget-object v8, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureTitle:Ljava/lang/String;

    iget-object v9, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureSwitchKey:Ljava/lang/String;

    iget-object v10, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    iget v11, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureIconResId:I

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    .line 139
    iget-object p1, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    check-cast p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;

    new-instance v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$2;-><init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)V

    invoke-virtual {p1, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter;->setOnCheckChangedListener(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppAdapter$OnCheckChangedListener;)V

    .line 145
    iget-object p0, p0, Lcom/meizu/settings/AppListBaseSettings;->mGroupAdapter:Lcom/meizu/common/widget/SingleArrayPartitionAdapter;

    return-object p0
.end method

.method protected createOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .line 61
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment$1;-><init>(Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 42
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2e

    const-string v0, ""

    const-string v1, "gesture_title"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureTitle:Ljava/lang/String;

    const-string v1, "guesture_switch_key"

    const-string v2, "mz_quick_wakeup_slide_right"

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureSwitchKey:Ljava/lang/String;

    const-string v1, "guesture_selected_app_detail_key"

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mSelectedAppDetailsKey:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "guesture_icon_res_id"

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mGuestureIconResId:I

    .line 56
    :cond_2e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isInSecretsMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->isInSecretsMode:Z

    return-void
.end method

.method public onCreateAppLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 155
    new-instance p1, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/AppListBaseSettings;->mSwitchOffOnSizeArray:[I

    invoke-direct {p1, p2, v0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;-><init>(Landroid/content/Context;[I)V

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mSelectedAppDetailsKey:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->getSettinsSystemString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "|"

    .line 159
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "\\|"

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 161
    iget-boolean v0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->isInSecretsMode:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    .line 162
    aget-object p2, p2, v0

    iput-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    goto :goto_3c

    :cond_34
    const/4 v0, 0x0

    .line 164
    aget-object p2, p2, v0

    iput-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    goto :goto_3c

    .line 167
    :cond_3a
    iput-object p2, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    .line 169
    :goto_3c
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;->mCurrentSelectAppInfo:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppListLoader;->setSelectedAppInfo(Ljava/lang/String;)V

    return-object p1
.end method
