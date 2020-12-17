.class public Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImportanceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onImportanceChanged()V
    .registers 9

    .line 464
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 466
    invoke-virtual {v2, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_e

    .line 468
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->access$100(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    iget-boolean v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_30

    goto :goto_46

    .line 474
    :cond_30
    iget-object v1, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_3b

    .line 475
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_44

    goto :goto_46

    .line 476
    :cond_3b
    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_44

    .line 477
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    goto :goto_47

    :cond_44
    move v0, v3

    goto :goto_47

    :cond_46
    :goto_46
    move v0, v2

    .line 480
    :goto_47
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mDynamicPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 481
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$ImportanceListener;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v5}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    if-nez v0, :cond_65

    move v7, v2

    goto :goto_66

    :cond_65
    move v7, v3

    :goto_66
    invoke-virtual {v5, v6, v4, v7}, Lcom/android/settings/notification/NotificationSettingsBase;->setVisible(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    goto :goto_4f

    :cond_6a
    return-void
.end method
