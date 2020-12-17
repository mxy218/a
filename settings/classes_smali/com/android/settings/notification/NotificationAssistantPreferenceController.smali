.class public Lcom/android/settings/notification/NotificationAssistantPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotificationAssistantPreferenceController.java"


# instance fields
.field protected mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 39
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method protected createCandidateInfo(Landroid/content/ComponentName;)Lcom/android/settingslib/widget/CandidateInfo;
    .registers 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .line 59
    new-instance v0, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v0
.end method

.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    .line 49
    new-instance v0, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v1}, Lcom/android/settings/notification/NotificationBackend;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->createCandidateInfo(Landroid/content/ComponentName;)Lcom/android/settingslib/widget/CandidateInfo;

    move-result-object v0

    .line 54
    :cond_13
    invoke-virtual {v0}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
