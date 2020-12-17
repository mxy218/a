.class Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

.field private mGentleHeaderVisible:Z

.field private mInitialized:Z

.field private mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

.field private final mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUseMultipleSections:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Z)V
    .registers 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 261
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 66
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method private adjustGentleHeaderVisibilityAndPosition(I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_f

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 153
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-eq v1, v2, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    .line 154
    :goto_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-nez v1, :cond_28

    .line 157
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz p1, :cond_5e

    .line 158
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 159
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5e

    .line 162
    :cond_28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-nez v0, :cond_4f

    .line 163
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 171
    :cond_47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5e

    :cond_4f
    add-int/lit8 v0, p1, -0x1

    if-eq v3, v0, :cond_5e

    if-ge v3, p1, :cond_57

    add-int/lit8 p1, p1, -0x1

    .line 181
    :cond_57
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :cond_5e
    :goto_5e
    return-void
.end method

.method private getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .registers 2

    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz v0, :cond_7

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0

    .line 239
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method private getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .registers 7

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_2d

    .line 248
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2a

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_2a

    .line 250
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 251
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_2d

    :cond_29
    move-object v1, v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static synthetic lambda$BXFcLGpgdZnd7PRimoedNDlJa8o(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearGentleNotifsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Lm4LNd4tUWZPNzSmZnkDovE-xCU(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onGentleHeaderClick(Landroid/view/View;)V

    return-void
.end method

.method private onClearGentleNotifsClick(Landroid/view/View;)V
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    .line 279
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private onGentleHeaderClick(Landroid/view/View;)V
    .registers 4

    .line 269
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    const/high16 v1, 0x20000000

    invoke-interface {p0, p1, v0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    return-void
.end method


# virtual methods
.method public beginsSection(Landroid/view/View;)Z
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method getGentleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method initialize(Landroid/view/LayoutInflater;)V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 76
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onUiModeChanged()V
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    return-void
.end method

.method reinflateViews(Landroid/view/LayoutInflater;)V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, -0x1

    if-eqz v0, :cond_2f

    .line 85
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2f

    .line 87
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v1

    .line 93
    :goto_30
    sget v2, Lcom/android/systemui/R$layout;->status_bar_notification_section_header:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$Lm4LNd4tUWZPNzSmZnkDovE-xCU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$Lm4LNd4tUWZPNzSmZnkDovE-xCU;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v0, v1, :cond_5a

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5a
    return-void
.end method

.method setOnClearGentleNotifsClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method updateFirstAndLastViewsInSections(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .registers 10

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    .line 201
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz v3, :cond_26

    if-eqz p0, :cond_26

    .line 205
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 206
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 207
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 208
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_42

    :cond_26
    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 210
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 211
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 212
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 213
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_42

    .line 215
    :cond_36
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 216
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 217
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 218
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :goto_42
    if-ne v3, v0, :cond_46

    if-eq p0, v2, :cond_47

    :cond_46
    const/4 v1, 0x1

    :cond_47
    return v1

    .line 223
    :cond_48
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 224
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return v1
.end method

.method updateSectionBoundaries()V
    .registers 7

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, -0x1

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_37

    .line 132
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 133
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_34

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_34

    .line 135
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 136
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_34

    .line 138
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v0, v2

    goto :goto_37

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 144
    :cond_37
    :goto_37
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->adjustGentleHeaderVisibilityAndPosition(I)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x2

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result p0

    .line 146
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setAreThereDismissableGentleNotifs(Z)V

    return-void
.end method
