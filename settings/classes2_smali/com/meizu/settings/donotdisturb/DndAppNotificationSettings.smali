.class public Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "DndAppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;
    }
.end annotation


# instance fields
.field private mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

.field private mDndAppNotificationAdapter:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

.field private mEmptyView:Landroid/view/View;

.field private mListener:Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

.field private mMainList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 25
    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;-><init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mListener:Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/view/View;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/widget/ListView;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mMainList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mDndAppNotificationAdapter:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mDndAppNotificationAdapter:Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 57
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "AppCloneSettings"

    const-string v0, "onCreate"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppListState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/donotdisturb/DndAppListState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const-string p0, "AppCloneSettings"

    const-string p3, "onCreateView"

    .line 66
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f0d01a8

    const/4 p3, 0x0

    .line 67
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 96
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string p0, "AppCloneSettings"

    const-string v0, "onDestroy"

    .line 97
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->removeInstance()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 82
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const-string v0, "AppCloneSettings"

    const-string v1, "onStart"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mListener:Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->onResume(Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 89
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    const-string v0, "AppCloneSettings"

    const-string v1, "onStop"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mDndAppListState:Lcom/meizu/settings/donotdisturb/DndAppListState;

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mListener:Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/donotdisturb/DndAppListState;->onPause(Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 73
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "AppCloneSettings"

    const-string v0, "onViewCreated"

    .line 74
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x102000a

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mMainList:Landroid/widget/ListView;

    .line 76
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mMainList:Landroid/widget/ListView;

    new-instance v0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;

    invoke-direct {v0, p0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$ListDividerPadding;-><init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    const p2, 0x1020004

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->mEmptyView:Landroid/view/View;

    return-void
.end method
