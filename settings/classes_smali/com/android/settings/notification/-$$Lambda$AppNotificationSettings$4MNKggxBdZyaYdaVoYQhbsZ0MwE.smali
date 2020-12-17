.class public final synthetic Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$4MNKggxBdZyaYdaVoYQhbsZ0MwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/AppNotificationSettings;

.field private final synthetic f$1:Landroid/app/NotificationChannelGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$4MNKggxBdZyaYdaVoYQhbsZ0MwE;->f$0:Lcom/android/settings/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$4MNKggxBdZyaYdaVoYQhbsZ0MwE;->f$1:Landroid/app/NotificationChannelGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$4MNKggxBdZyaYdaVoYQhbsZ0MwE;->f$0:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$AppNotificationSettings$4MNKggxBdZyaYdaVoYQhbsZ0MwE;->f$1:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/AppNotificationSettings;->lambda$populateGroupToggle$0$AppNotificationSettings(Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
