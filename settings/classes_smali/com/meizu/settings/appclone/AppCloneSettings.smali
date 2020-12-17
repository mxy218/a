.class public Lcom/meizu/settings/appclone/AppCloneSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "AppCloneSettings.java"


# instance fields
.field private mAppCloneAdapter:Lcom/meizu/settings/appclone/AppCloneAdapter;

.field private mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

.field private mEmptyView:Landroid/view/View;

.field private mListener:Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

.field private mMainList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/appclone/AppCloneSettings$1;-><init>(Lcom/meizu/settings/appclone/AppCloneSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mListener:Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/view/View;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/widget/ListView;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mMainList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneAdapter:Lcom/meizu/settings/appclone/AppCloneAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/appclone/AppCloneSettings;Lcom/meizu/settings/appclone/AppCloneAdapter;)Lcom/meizu/settings/appclone/AppCloneAdapter;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneAdapter:Lcom/meizu/settings/appclone/AppCloneAdapter;

    return-object p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_f

    const/4 p1, -0x1

    if-ne p2, p1, :cond_f

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneAdapter:Lcom/meizu/settings/appclone/AppCloneAdapter;

    if-eqz p0, :cond_f

    .line 111
    invoke-virtual {p0}, Lcom/meizu/settings/appclone/AppCloneAdapter;->resumeDisableAppClone()V

    :cond_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 59
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "AppCloneSettings"

    const-string/jumbo v0, "onCreate"

    .line 60
    invoke-static {p1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

    .line 63
    new-instance p1, Landroid/content/Intent;

    const-string v0, "flyme.intent.action.APPCLONE_TEST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p0, "AppCloneSettings"

    const-string/jumbo p3, "onCreateView"

    .line 70
    invoke-static {p0, p3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f0d01a8

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 100
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string p0, "AppCloneSettings"

    const-string/jumbo v0, "onDestroy"

    .line 101
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->removeInstance()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 86
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const-string v0, "AppCloneSettings"

    const-string/jumbo v1, "onStart"

    .line 87
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mListener:Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/appclone/AppCloneState;->onResume(Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 93
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "AppCloneSettings"

    const-string/jumbo v1, "onStop"

    .line 94
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mAppCloneState:Lcom/meizu/settings/appclone/AppCloneState;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mListener:Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/appclone/AppCloneState;->onPause(Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 77
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "AppCloneSettings"

    const-string/jumbo v0, "onViewCreated"

    .line 78
    invoke-static {p2, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x102000a

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mMainList:Landroid/widget/ListView;

    .line 80
    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mMainList:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1020004

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings;->mEmptyView:Landroid/view/View;

    return-void
.end method
